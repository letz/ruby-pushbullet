require 'pushbullet'

FactoryGirl.define do
  factory :contact, class: Pushbullet::Contact do
    iden 'ujDyIULYrzUsjAw1gZVXy0'
    name 'Letz'
    created 1.42281936103990364e+09
    modified 1.4228193610399084e+09
    email 'letzdevelopment@gmail.com'
    email_normalized 'letzdevelopment@gmail.com'
    active true
  end

  factory :device, class: Pushbullet::Device do
    iden 'ujDyIULYrzUsjAlDVWxUrc'
    nickname 'Letz Device'
    created 1.42281936103990364e+09
    modified 1.4228193610399084e+09
    type 'stream'
    pushable true
    active true
  end
end
