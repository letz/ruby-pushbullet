# Ruby Pushbullet API

[![Build Status](https://travis-ci.org/letz/ruby-pushbullet.svg?branch=master)](https://travis-ci.org/letz/ruby-pushbullet)
[![Code Climate](https://codeclimate.com/github/letz/ruby-pushbullet/badges/gpa.svg)](https://codeclimate.com/github/letz/ruby-pushbullet)
[![Gem Version](https://badge.fury.io/rb/ruby-pushbullet.svg)](http://badge.fury.io/rb/ruby-pushbullet)


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
Pushbullet.api_token = 'YOUR_API_TOKEN'
```

## Usage

### Contact

```ruby
# Get all contacts
Pushbullet::Contact.all

# create contact
contact = Pushbullet::Contact.create('Name', 'example@mail.com')
contact.name = 'Another name'
contact.save # update

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
me = Pushbullet::Contact.me
me.push_note(title, body)

# or...

device = Pushbullet::Device.all.first
device.push_link(title, link, body)

```

### Channel

TODO...


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
