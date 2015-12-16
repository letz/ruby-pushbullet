class Pushbullet::Push < Pushbullet::Resource
  register_attributes :iden, :active, :created, :modified, :type, :dismissed,
                      :guid, :direction, :sender_iden, :sender_email,
                      :sender_email_normalized, :sender_name, :receiver_iden,
                      :receiver_email, :receiver_email_normalized,
                      :target_device_iden, :source_device_iden, :client_iden,
                      :channel_iden, :awake_app_guids, :title, :body, :url,
                      :file_name, :file_type, :file_url, :image_url,
                      :image_width, :image_height

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
