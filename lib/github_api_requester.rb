# frozen_string_literal: true

require 'spec_helper'

# keeping it single responsability and clear.
class GitHubApiRepoRequester
  def request(profile)
    response = RestClient.get("https://api.github.com/users/#{profile}/repos")
    response
  end
end
