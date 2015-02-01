require 'spec_helper'

describe Pushbullet::Contact do
  describe '::all' do
    it 'returns all contacts' do
      VCR.use_cassette('contacts_all') do
        expect(described_class.all).to be_a Array
      end
    end

    it 'returns iterable of Contacts' do
      VCR.use_cassette('contacts_all') do
        described_class.all.each do |cont|
          expect(cont).to be_a described_class
        end
      end
    end
  end

  describe '::create' do
    context 'given an name and a email' do
      let(:name) { 'Letz' }
      let(:email) { 'letzdevelopment@gmail.com' }

      it 'returns a contact' do
        VCR.use_cassette('contacts_create') do
          expect(described_class.create name, email).to be_a described_class
        end
      end
    end
  end

  describe '#destroy' do
    context 'given a contact' do
      let(:contact) { build(:contact) }

      it 'removes a contact' do
        VCR.use_cassette('contacts_remove') do
          expect(contact.destroy).to be_truthy
        end
      end
    end
  end

  describe '#save' do
    let(:contact) { build(:contact) }
    before { contact.name = 'Another name' }

    it 'updates the name of the contact' do
      VCR.use_cassette('contacts_update') do
        expect(contact.save).to be_truthy
      end
    end
  end
end
