shared_examples 'a better HTTP response handling' do
  it 'raises an Pushbullet::Error with the message' do
    VCR.use_cassette('get_error', match_requests_on: [:host]) do
      expect { request }.to raise_error(Pushbullet::Error)
    end
  end

  it 'does not raise an Pushbullet::Error with the message' do
    VCR.use_cassette('contacts_all', match_requests_on: [:host]) do
      expect { request }.not_to raise_error
    end
  end
end
