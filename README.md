# Ruby Pushbullet API

[![Build Status](https://travis-ci.org/letz/ruby-pushbullet.svg?branch=master)](https://travis-ci.org/letz/ruby-pushbullet)
[![Code Climate](https://codeclimate.com/github/letz/ruby-pushbullet/badges/gpa.svg)](https://codeclimate.com/github/letz/ruby-pushbullet)
[![Gem Version](https://badge.fury.io/rb/ruby-pushbullet.svg)](http://badge.fury.io/rb/ruby-pushbullet)
[![Codacy Badge](https://api.codacy.com/project/badge/5c759948c4a740dcb2efe9172b70cd4c)](https://www.codacy.com/app/letz/ruby-pushbullet)


This library is an implementation of [Pushbullet API](https://docs.pushbullet.com/http)


Feel free to contribute :smile:

**NOTE: This is not production ready (yet).**

## Installation

```
gem install ruby-pushbullet
```

## Configuration

You can get your api token from [Account Settings](https://www.pushbullet.com/account)

```ruby
Pushbullet.configure do |config|
  config.api_token = 'YOUR_API_TOKEN'
end
```

## Usage

### Contact

```ruby
# Get all Chats
Pushbullet::Chat.all

# create contact
contact = Pushbullet::Chat.create('example@mail.com')
```

### Device

```ruby
# Get all devices
devices = Pushbullet::Device.all

# create device
device = Pushbullet::Device.create('Device Name', 'stream')
device.nickname = 'Another name'
device.save #update

```

### Push

```ruby
# Id can be an device id or a email

Pushbullet::Push.create_note(id, title, body)
Pushbullet::Push.create_link(id, title, url, body)
Pushbullet::Push.create_address(id, name, address)
Pushbullet::Push.create_list(id, title, items)
```

**Or directly from a device or a contact**

```ruby
me = Pushbullet::User.me
me.push_note(title, body)

# or...

device = Pushbullet::Device.all.first
device.push_link(title, link, body)
```

### Subscription

```ruby
# Get all subscriptions
Pushbullet::Subscrition.all
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
