require 'spec_helper'

RSpec.describe 'FEATURES' do
  let(:different_repo) { 'TEST2' }
  let(:favourite_language) { FavouriteLanguage.new }

  describe '#request' do
    it 'The API response from a different repo is saved' do
      favourite_language.request(different_repo)
      expect(favourite_language.data[0]['owner']['login']).to eq(different_repo)
    end
  end
end