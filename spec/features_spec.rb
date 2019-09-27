require 'spec_helper'

RSpec.describe 'FEATURES' do
  let(:request_my_repo) do
    RestClient.get('https://api.github.com/users/JRRS1982/repos')
  end

  let(:favourite_language) { FavouriteLanguage.new }

  describe '#print_out' do
    it 'When there has been no request for data it prints something' do
      favourite_language = FavouriteLanguage.new
      expect { favourite_language.print_out }.to output('There appears to be nothing to print').to_stdout
    end
  end

  describe '#request' do
    it 'Checks that a request to my repo is successful' do
      expect(request_my_repo.code).to be(200)
    end
  end
end