module Pushbullet
  class Contact < Resource
    include Pushable

    def self.me
      new Pushbullet.client.get('users/me')
    end

    def self.create(name, email)
      super(name: name, email: email)
    end

    def save
      super(name: name)
    end

    def target_id
      email
    end
  end
end
