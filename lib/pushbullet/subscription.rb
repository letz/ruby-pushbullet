class Pushbullet::Subscription < Pushbullet::Resource
  register_attributes :iden, :active, :created, :modified, :muted, :channel

  register_updatable_attributes :muted

  def initialize(attributes)
    unless attributes['channel'].nil?
      attributes['channel'] = Pushbullet::Channel.new(attributes['channel'])
    end
    super attributes
  end

  def self.create(name)
    super(channel_tag: name)
  end
end
