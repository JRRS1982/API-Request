require 'spec_helper'

RSpec.describe 'FEATURES' do
  let(:request_my_repo) do
    RestClient.get('https://api.github.com/users/JRRS1982/repos')
  end

  let(:favourite_language) { FavouriteLanguage.new }

  describe '#print_out' do
    it 'When there has been no request for data it prints something' do
      expect { favourite_language.print_out }.to output('There appears to be nothing to print').to_stdout
    end
  end

  describe '#request' do
    it 'Checks that a request to my repo is successful' do
      expect(request_my_repo.code).to be(200)
    end

    it 'The API response from my repo is saved' do
      favourite_language.request('JRRS1982')
      expect(favourite_language.data[0]['owner']['login']).to eq('JRRS1982')
    end
  end
end