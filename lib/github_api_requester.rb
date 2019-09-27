require 'spec_helper'

class GitHubApiDataRequester
  def request(profile)
    response = RestClient.get("https://api.github.com/users/#{profile}/repos")
    data = JSON.parse(response)
    data
  end
end