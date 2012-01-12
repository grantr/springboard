# ElasticsearchServer

Makes it dead simple to run [elasticsearch](/elasticsearch/elasticsearch) from your rails project.

Note this is not recommended for use in production! Use a real elasticsearch deployment there. Only use this for development purposes!

## Installation

Add this line to your application's Gemfile:

    gem 'elasticsearch-server'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elasticsearch-server

## Usage

This gem packages up the elasticsearch binary distribution with a ruby
gem binary on top. It add a config path parameter to the elasticsearch 
binary. This makes it easier to put a relative config path on the 
command line:

    elasticsearch -c config/elasticsearch -f

All other parameters are passed through to the normal elasticsearch
start script.

You can run elasticsearch from a Procfile:

    es: bundle exec elasticsearch -c config/elasticsearch -f

A rails generator for config files is included. Run:
    
    rails g elasticsearch_server:config

To install elasticsearch configs in config/elasticsearch. Adjust things
like heap min/max in config/elasticsearch/elasticsearch.in.sh.

Note that you almost always want to specify -c. Without it the default
elasticsearch configs are used and your data/logs will go into the gem
path, almost certainly not what you want.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
