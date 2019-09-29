# frozen_string_literal: true

require 'spec_helper'

# requests repos from github with the designated profile name and returns parsed
# feel like i need to have an API requested super class, and github request 
# being a child of that class, and maybe have the 
class GitHubApiDataRequester
  def request(profile)
    response = RestClient.get("https://api.github.com/users/#{profile}/repos")
    data = JSON.parse(response)
    data
  end
end
