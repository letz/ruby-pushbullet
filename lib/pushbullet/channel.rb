class Pushbullet::Channel < Pushbullet::Resource
  register_attributes :iden, :description, :image_url, :name, :tag,
                      :subscriber_count, :recent_pushes

  def self.get_info(tag, no_recent_pushes = nil)
    query = "channel-info?tag=#{tag}"
    query += "&no_recent_pushes=#{no_recent_pushes}" unless no_recent_pushes.nil?
    channel = new Pushbullet.client.get(query)
    channel.recent_pushes.map! { |push| Pushbullet::Push.new push }
    channel
  end
end
