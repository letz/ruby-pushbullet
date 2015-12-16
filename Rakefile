require 'bundler/gem_tasks'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task :default => :spec

desc 'Open an irb session preloaded with this library'
task :console do
  require 'pry'
  require 'pushbullet'
  Pushbullet.configure do |config|
    config.api_token = 'nice_try'
  end
  Pry.start
end
