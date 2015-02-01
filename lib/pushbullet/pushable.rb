module Pushbullet
  module Pushable

    def push_note(title, body)
      Push.create :note, target_id, title: title, body: body
    end

    def push_link(title, url, body)
      Push.create :link, target_id, title: title, url: url, body: body
    end

    def push_address(name, address)
      Push.create :address, target_id, name: name, address: address
    end

    def push_list(title, items)
      Push.create :list, target_id, title: title, items: items
    end
  end
end
