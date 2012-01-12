require 'rails'

module ElasticsearchServer
  class Railtie < Rails::Railtie
    generators do
      require 'elasticsearch-server/generators/config_generator'
    end

    rake_tasks do
      load 'elasticsearch-server/tasks.rb'
    end
  end
end
