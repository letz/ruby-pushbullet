module Pushbullet
  class Device < Resource
    include Pushable

    def self.create(nickname, type)
      super(nickname: nickname, type: type)
    end

    def save
      super(nickname: nickname)
    end

    def target_id
      iden
    end
  end
end
