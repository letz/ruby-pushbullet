require 'spec_helper'

describe Pushbullet do
  describe '::api_token=' do
    before { described_class.api_token = nil }
    after { described_class.api_token = 'DhOX5Q8Fps9mq4g90yfrfioRPyo1qQRd' }
    context 'given an api_token' do
      let(:token) { 'nice_try' }

      it 'sets the Pushbullet api token' do
        expect {
          described_class.api_token = token
        }.to change { described_class.api_token }.from(nil).to(token)
      end
    end
  end

  describe '::client' do
    it 'returns a Pushbullet::Client' do
      expect(described_class.client).to be_a Pushbullet::Client
    end
  end
end
