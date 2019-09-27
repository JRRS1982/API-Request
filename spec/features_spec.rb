require 'spec_helper'

RSpec.describe 'FEATURES' do
  describe '#print_out' do
    it 'When there has been no request for data it prints something' do
      favourite_language = FavouriteLanguage.new
      expect { favourite_language.print_out }.to output('There appears to be nothing to print').to_stdout
    end
  end
end