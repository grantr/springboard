require 'rails'

module Springboard
  class Railtie < Rails::Railtie
    generators do
      require 'springboard/generators/config_generator'
    end

    rake_tasks do
      load 'springboard/tasks.rb'
    end
  end
end
