class Pushbullet::Chat < Pushbullet::Resource
  register_attributes :iden, :active, :created, :modified, :muted

  register_updatable_attributes :muted

  def initialize(attributes)
    attributes['with'] = Pushbullet::Contact.new(attributes['with'])
    super attributes
  end

  def self.create(email)
    super(email: email)
  end
end
