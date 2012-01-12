require 'rake'

namespace :es do
  desc "clean elasticsearch data"
  task :clean do
    sh "rm -rf #{Rails.root.join("db/elasticsearch/*")}"
  end
end
