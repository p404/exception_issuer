require "exception_issuer/version"
require 'octokit'

module ExceptionNotifier

  class GithubNotifier

    def initialize(options)
      begin
        access_token = options.delete(:access_token)
        @repo        = options.delete(:repository)
        @client      = Octokit::Client.new(:access_token => access_token)
        @repo_exist  = @client.repository(@repo)

      rescue
        @client = @repo_exist = nil
      end
    end

    def call(exception, options={})
      @client.create_issue(@repo, exception.message, exception.backtrace.first)
    end

  end

end

