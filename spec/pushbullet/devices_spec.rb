require 'spec_helper'

describe Pushbullet::Device do
  describe '::all' do
    it 'returns all devices' do
      VCR.use_cassette('devices_all') do
        expect(described_class.all).to be_a Array
      end
    end

    it 'returns iterable of Devices' do
      VCR.use_cassette('devices_all') do
        described_class.all.each do |cont|
          expect(cont).to be_a described_class
        end
      end
    end
  end

  describe '::create' do
    context 'given an nickname and a type' do
      let(:nickname) { 'Letz Device' }
      let(:type) { 'stream' }

      it 'returns a device' do
        VCR.use_cassette('devices_create') do
          expect(described_class.create nickname, type).to be_a described_class
        end
      end
    end
  end

  describe '#destroy' do
    context 'given a device' do
      let(:device) { build(:device) }

      it 'removes a device' do
        VCR.use_cassette('devices_remove') do
          expect(device.destroy).to be_truthy
        end
      end
    end
  end

  describe '#save' do
    let(:device) { build(:device) }
    before { device.nickname = 'Another name' }

    it 'updates the name of the device' do
      VCR.use_cassette('devices_update') do
        expect(device.save).to be_truthy
      end
    end
  end
end
