module Pushbullet
  class Resource < OpenStruct
    def self.create(params)
      new Pushbullet.client.post(path, params)
    end

    def self.all
      Pushbullet.client.get(path)[path].map do |model|
        new model
      end
    end

    def save(params)
      Pushbullet.client.post "#{self.class.path}/#{iden}", params
      true
    end

    def destroy
      Pushbullet.client.delete "#{self.class.path}/#{iden}"
      true
    end

    def self.path
      klass = self.is_a?(Class) ? self : self.class
      @path ||= "#{klass.to_s.demodulize.downcase}s"
    end
  end
end
