class Pushbullet::User < Pushbullet::Resource
  register_attributes :iden, :created, :modified, :email, :email_normalized, :name,
                      :image_url, :max_upload_size, :referred_count, :referrer_iden,
                      :active

  def self.me
    new Pushbullet.client.get 'users/me'
  end
end
