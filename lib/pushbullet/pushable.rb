module Pushbullet
  module Pushable

    def push_note(title, body)
      push :note, target_id, title: title, body: body
    end

    def push_link(title, url, body)
      push :link, target_id, title: title, url: url, body: body
    end

    def push_address(name, address)
      push :address, target_id, name: name, address: address
    end

    def push_list(title, items)
      push :list, target_id, title: title, items: items
    end

    private

    def push(type, iden, payload)
      id = iden[/.@.?/].nil? ? :device_iden : :email
      Push.create(payload.merge(type: type, id => iden))
    end
  end
end
