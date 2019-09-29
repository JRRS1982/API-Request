# frozen_string_literal: true

require_relative 'github_api_requester'
require_relative 'most_common_in_array'
require_relative 'create_array_from_hash'

# this is the main app in which we are including two modules and a class.
class FavouriteLanguage
  include MostCommonInArray
  include CreateArrayFromHash

  attr_reader :data, :list, :result, :input

  def initialize
    @data = []
    @list = []
    @input = ''
    @result = []
  end

  # my mind is drawn to reusability, this class is specifically focused on
  # language, but it doesnt matter where the data is coming from so the data
  # requester can be replaced with other things, i.e. input can be 
  def request(profile, data_requester = GitHubApiDataRequester.new)
    @data = data_requester.request(profile)
  end

  # if i put in a parameter here i can change the request so that language is 
  # replacable by other things.... i.e. add 
  # @input here..... trying to set the search params and call it here... so when its set by the request it is the element we search for. i.e. its not hard codede 'language' the array that is created is dynamic.
  def print_out(language_or_other_requirement)
    @list = create_array_from_hash(hash: @data, key: language_or_other_requirement)
    @result = most_common_in_array(array: @list)
    print_results(@result, language_or_other_requirement)
  end

  private

  def print_results(result, language_or_other_requirement)
    if result.nil?
      print 'There appears to be nothing to print'
    else
      print "The user's favourite #{language_or_other_requirement} is probably #{result}"
    end
  end
end
