class FavouriteLanguage
  attr_reader :data
  
  def initialize
    @data = []
  end

  def print_out
    print 'There appears to be nothing to print'
  end

  def request(user_profile)
    response = RestClient.get("https://api.github.com/users/#{user_profile}/repos")
    @data = JSON.parse(response)
  end
end