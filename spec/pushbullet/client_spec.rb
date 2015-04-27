require 'spec_helper'

describe Pushbullet::Client do
  describe '#get' do
    it_behaves_like('a better HTTP response handling') do
      let(:request) { described_class.new.get '' }
    end
  end

  describe '#post' do
    it_behaves_like('a better HTTP response handling') do
      let(:request) { described_class.new.post '' }
    end
  end

  describe '#put' do
    it_behaves_like('a better HTTP response handling') do
      let(:request) { described_class.new.put '' }
    end
  end

  describe '#delete' do
    it_behaves_like('a better HTTP response handling') do
      let(:request) { described_class.new.delete '' }
    end
  end
end
