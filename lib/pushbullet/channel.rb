module Pushbullet
  class Channel < Resource
    include Pushable

    def self.subscribe(name)
      create(channel_tag: name)
    end

    def self.unsubscribe(idn)
      Pushbullet.client.delete "#{path}/#{idn}"
      true
    end

    def self.get_info(tag)
      channel = new Pushbullet.client.get("channel-info?tag=#{tag}")
      channel.recent_pushes.map! { |push| Pushbullet::Push.new push }
      channel
    end

    def self.path
      'subscriptions'
    end
  end
end
