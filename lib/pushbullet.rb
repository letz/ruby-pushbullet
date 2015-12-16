# libs
require 'json'
require 'logger'
require 'rest-client'
# external
require 'core_ext/string'
# pushbullet
require 'pushbullet/pushable'
require 'pushbullet/configuration'
require 'pushbullet/client'
require 'pushbullet/resource'
require 'pushbullet/error'
require 'pushbullet/user'
require 'pushbullet/device'
require 'pushbullet/push'
require 'pushbullet/channel'
require 'pushbullet/subscription'
require 'pushbullet/chat'
require 'pushbullet/contact'

module Pushbullet
  @configuration = Configuration.new

  def self.configure
    if block_given?
      yield @configuration
      client.api_token =  @configuration.api_token
    end
  end

  def self.client
    @client ||= Client.new
  end
end
