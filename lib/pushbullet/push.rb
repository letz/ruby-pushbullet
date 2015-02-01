module Pushbullet
  class Push < Resource

    def self.create(type, iden, payload)
      id = iden[/.@.?/].nil? ? :device_iden : :email
      super(payload.merge(type: type, id => iden))
    end

    def self.path
      'pushes'
    end
  end
end
