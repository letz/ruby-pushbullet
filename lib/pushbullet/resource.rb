class Pushbullet::Resource

  def initialize(attributes)
    attributes.each do |key, value|
      instance_variable_set(:"@#{key}", value)
    end
  end

  def self.create(params)
    new Pushbullet.client.post(path, params)
  end

  def self.all
    Pushbullet.client.get(path)[path].map do |model|
      new model
    end
  end

  def save
    attributes_to_update = attributes.select do |key, _|
      self.class.updatable_attributes.include? key.to_sym
    end
    Pushbullet.client.post "#{self.class.path}/#{iden}", attributes_to_update
    true
  end

  def attributes
    attrs = {}
    self.class.attributes.each do |key|
      attrs[key.to_s] = send(key)
    end
    attrs
  end

  def destroy
    Pushbullet.client.delete "#{self.class.path}/#{iden}"
    true
  end

  def self.path
    klass = self.is_a?(Class) ? self : self.class
    @path ||= "#{klass.to_s.demodulize.downcase}s"
  end

  def self.register_attributes(*attributes)
    @attributes ||= attributes
    class_eval do
      attributes.each do |attribute|
        define_method(attribute) do
          instance_variable_get(:"@#{attribute}")
        end
      end
    end
  end

  def self.attributes
    @attributes
  end

  def self.updatable_attributes
    @updatable_attributes
  end

  def self.register_updatable_attributes(*attributes)
    @updatable_attributes ||= attributes
    class_eval do
      attributes.each do |attribute|
        define_method(:"#{attribute}=") do |argument|
          instance_variable_set(:"@#{attribute}", argument)
        end
      end
    end
  end
end
