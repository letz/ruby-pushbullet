if ENV['SIMPLECOV']
  require 'simplecov'
  SimpleCov.start 'rails'
  puts 'required simplecov'
end
require 'webmock/rspec'
require 'awesome_print'
require 'vcr'

require 'bundler/setup'
Bundler.setup

require 'pushbullet'

VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = false
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock # or :fakeweb
end

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.run_all_when_everything_filtered = true
  config.filter_run focus: true
  config.order = 'random'
end
