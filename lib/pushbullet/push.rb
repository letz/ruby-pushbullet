class Pushbullet::Push < Pushbullet::Resource

  def self.create_note(id, title, body)
    create :note, id, title: title, body: body
  end

  def self.create_link(id, title, url, body)
    create :link, id, title: title, url: url, body: body
  end

  def self.create_address(id, name, address)
    create :address, id, name: name, address: address
  end

  def self.create_list(id, title, items)
    create :list, id, title: title, items: items
  end

  def self.create(type, iden, payload)
    id = iden[/.@.?/].nil? ? :device_iden : :email
    super(payload.merge(type: type, id => iden))
  end

  def self.path
    'pushes'
  end
end
