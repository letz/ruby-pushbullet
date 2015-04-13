require 'spec_helper'

describe Pushbullet::Channel do
  describe '::get_info' do
    context 'given a channel tag' do
      let(:tag) { 'jblow'}

      it 'returns channel info' do
        VCR.use_cassette('channel_info') do
          expect(described_class.get_info tag).to be_a described_class
        end
      end

       it 'returns channel with recent pushes' do
        VCR.use_cassette('channel_info') do
          described_class.get_info(tag).recent_pushes.each do |push|
            expect(push).to be_a Pushbullet::Push
          end
        end
      end
    end
  end

  describe '::subscribe' do
    context 'given a channel tag' do
      let(:tag) { 'jblow' }

      it 'returns a channel' do
        VCR.use_cassette('channel_subscribe') do
          expect(described_class.subscribe tag).to be_a described_class
        end
      end
    end
  end

  describe '::unsubscribe' do
    context 'given a channel idn' do
      let(:idn) { 'ujx7XdJ9W8qsjAlOnVVSqy' }

      it 'unsubscribes a channel' do
        VCR.use_cassette('channel_unsubscribe') do
          expect(described_class.unsubscribe idn).to be_truthy
        end
      end
    end
  end
end
