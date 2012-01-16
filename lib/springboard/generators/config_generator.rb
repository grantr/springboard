require 'rails/generators'

module Springboard
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.join(File.dirname(__FILE__), './templates')

      def config
        say "Installing config..."
        template "elasticsearch.yml", "config/elasticsearch/elasticsearch.yml"
        copy_file "logging.yml", "config/elasticsearch/logging.yml"
        copy_file "elasticsearch.in.sh", "config/elasticsearch/elasticsearch.in.sh"
        say "Run elasticsearch with springboard -c config/elasticsearch to use your new config."
        say "Check here for more configuration options:"
        say "  https://github.com/elasticsearch/elasticsearch/blob/master/config/elasticsearch.yml"
      end


      protected

      def application_name
        Rails.application.class.name.split('::').first.underscore 
      end
    end
  end
end

