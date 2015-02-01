require 'json'
require 'logger'
require 'pushbullet/pushable'
require 'pushbullet/client'
require 'pushbullet/resource'
require 'pushbullet/contact'
require 'pushbullet/device'
require 'pushbullet/push'
require 'pushbullet/channel'

module Pushbullet

  def self.api_token=(api_token)
    @api_token = api_token
  end

  def self.api_token
    @api_token
  end

  def self.client
    @client ||= Client.new
  end
end
