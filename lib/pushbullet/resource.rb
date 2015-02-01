module Pushbullet
  class Resource < OpenStruct
    def self.create(params)
      new Pushbullet.client.post(self::PATH, params)
    end

    def self.all
      Pushbullet.client.get(self::PATH)[self::PATH].map do |model|
        new model
      end
    end

    def save(params)
      Pushbullet.client.put "#{self.class::PATH}/#{self.iden}", params
      true
    end

    def destroy
      Pushbullet.client.delete "#{self.class::PATH}/#{self.iden}"
      true
    end
  end
end
