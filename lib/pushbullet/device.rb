class Pushbullet::Device < Pushbullet::Resource
  include Pushbullet::Pushable

  register_attributes :iden, :active, :created, :modified, :icon, :nickname,
                      :generated_nickname, :manufacturer, :model, :app_version,
                      :fingerprint, :key_fingerprint, :push_token, :has_sms

  register_updatable_attributes :nickname, :model, :manufacturer, :push_token,
                                :app_version, :icon, :has_sms
end
