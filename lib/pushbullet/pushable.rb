module Pushbullet
  module Pushable

    def push_note(title, body)
      Push.create_note target_id, title, body
    end

    def push_link(title, url, body)
      Push.create_link target_id, title, url, body
    end

    def push_address(name, address)
      Push.create_address target_id, name, address
    end

    def push_list(title, items)
      Push.create_list target_id, title, items
    end
  end
end
