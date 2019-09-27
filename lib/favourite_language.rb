require_relative 'github_api_requester'
require_relative 'most_common_in_array'
require_relative 'create_array_from_hash'

class FavouriteLanguage
  include MostCommonInArray
  include CreateArrayFromHash

  attr_reader :data, :language_list, :result

  def initialize
    @data = []
    @language_list = []
    @result = []
  end

  def request(input, data_requester = GitHubApiDataRequester.new)
    @data = data_requester.request(input)
  end

  def print_out
    @language_list = create_array_from_hash(hash: @data, key: 'language')
    @result = most_common_in_array(array: @language_list)
    print_results(@result)
  end

  private

  def print_results(result)
    if result.nil?
      print 'There appears to be nothing to print'
    else
      print "The user's favourite language is probably #{result}"
    end
  end
end
