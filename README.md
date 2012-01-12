# Springboard

Makes it dead simple to run [elasticsearch](/elasticsearch/elasticsearch)
from your rails project. No external dependencies except java. Just 
bundle and go!

Note this is not recommended for use in production environments. Use a
real elasticsearch deployment there. Only use this for development purposes.

## Installation

Add this line to your application's Gemfile:

    gem 'springboard'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install springboard

## Usage

This gem packages up the elasticsearch binary distribution with a ruby
gem binary on top. It add a config path parameter to the elasticsearch 
binary. This makes it easier to put a relative config path on the 
command line:

    elasticsearch -c config/elasticsearch -f

All other parameters are passed through to the normal elasticsearch
start script.

Note that you almost always want to specify -c. Without it the default
elasticsearch configs are used and your data/logs will go into the gem
path, almost certainly not what you want.

You can run elasticsearch from a Procfile:

    es: bundle exec elasticsearch -c config/elasticsearch -f

A rails generator for elasticsearch config files is included. Run:
    
    rails g springboard:config

to install a sane development config in config/elasticsearch.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
