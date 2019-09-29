require 'spec_helper'
require 'pry'

RSpec.describe 'favourite_language' do
  let(:dummy_repo) { 'TEST0' }
  let(:different_repo) { 'TEST2' }
  let(:favourite_language) { FavouriteLanguage.new }

  describe '#request' do
    it 'The API response from a different repo is saved' do
      favourite_language.request(different_repo)
      expect(favourite_language.data[0]['owner']['login']).to eq(different_repo)
    end
  end

  describe '#print_out' do
    it 'creates a list of the languages' do
      favourite_language.request(dummy_repo)
      favourite_language.print_out('language')
      expect(favourite_language.list).to eq(['Ruby'])
    end
  end
end