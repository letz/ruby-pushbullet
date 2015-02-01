module Pushbullet
  class Channel < Resource
    include Pushable
    PATH = 'devices'
  end
end
