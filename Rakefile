#!/usr/bin/env rake
require "bundler/gem_tasks"

namespace :es do
  desc "update elasticsearch version" 
  task :update, [:version] do |t, args|
    sh "rm -rf vendor/elasticsearch && mkdir vendor/elasticsearch"
    sh "wget https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-#{args.version}.tar.gz"
    sh "tar zxvf elasticsearch-#{args.version}.tar.gz"
    sh "mv elasticsearch-#{args.version}/* vendor/elasticsearch"
    sh "rm -rf elasticsearch-#{args.version} elasticsearch-#{args.version}.tar.gz"
    sh "cp vendor/elasticsearch/bin/elasticsearch.in.sh lib/elasticsearch-server/generators/templates"
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
    sh "rm -rf vendor/elasticsearch/logs vendor/elasticsearch/data"
  end
end
