class Pushbullet::Configuration
  CONFIGURABLE_ATTRIBUTES = %i(api_token)

  attr_accessor *CONFIGURABLE_ATTRIBUTES

  def initialize(attrs = {})
    self.attributes = attrs
  end

  def attributes=(attrs = {})
    attrs.each { |key, value| instance_variable_set("@#{key}", value) }
  end
end
