#!/usr/bin/env rake
require "bundler/gem_tasks"

namespace :es do
  desc "update elasticsearch version" 
  task :update, [:version] do |t, args|
    `rm -rf vendor/elasticsearch && mkdir vendor/elasticsearch`
    `wget https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-#{args.version}.tar.gz`
    `tar zxvf elasticsearch-#{args.version}.tar.gz`
    `mv elasticsearch-#{args.version}/* vendor/elasticsearch`
    `rm -rf elasticsearch-#{args.version} elasticsearch-#{args.version}.tar.gz`
    File.open("lib/elasticsearch-server/version.rb", "w") do |f|
      f.write <<EOS
module Elasticsearch
  module Server
    VERSION = "#{args.version}"
  end
end
EOS
    end
  end

  desc "clean data and logs"
  task :clean do
    `rm -rf vendor/elasticsearch/logs vendor/elasticsearch/data`
  end
end
