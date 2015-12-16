module Pushbullet
  module Pushable
    def push_note(title, body)
      Push.create_note iden, title, body
    end

    def push_link(title, url, body)
      Push.create_link iden, title, url, body
    end

    def push_address(name, address)
      Push.create_address iden, name, address
    end

    def push_list(title, items)
      Push.create_list iden, title, items
    end
  end
end
