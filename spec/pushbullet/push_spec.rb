require 'spec_helper'

describe Pushbullet::Push do
  describe '::create_note' do
    context 'given an id, a title and a body' do
      let(:id) { 'letzdevelopment@gmail.com' }
      let(:title) { 'Le title' }
      let(:body) { 'Le body' }

      it 'returns a Push' do
        VCR.use_cassette('push_create_note') do
          expect(described_class.create_note id, title, body).to be_a described_class
        end
      end
    end
  end

  describe '::create_link' do

  end

  describe '::create_address' do

  end

  describe '::create_list'
end
