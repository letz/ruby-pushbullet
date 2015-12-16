class Pushbullet::Contact

  attr_reader :type, :iden, :name, :email, :email_normalized, :image_url

  def initialize(attributes)
    attributes.each do |key, value|
      instance_variable_set(:"@#{key}", value)
    end
  end
end
