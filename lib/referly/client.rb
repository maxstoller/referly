require 'httparty'

module Referly
  class Client
    include HTTParty
    base_uri 'https://refer.ly/api/120701'

    def initialize(key, secret)
      @auth = { username: key, password: secret }
    end

    def post(path, params)
      self.class.post(path, body: params, basic_auth: @auth)
    end

    def get(path, params)
      self.class.get(path, query: params, basic_auth: @auth)
    end

    def accounts
      Referly::AccountProxy.new(self)
    end

    def links
      Referly::LinkProxy.new(self)
    end

    def rewards
      Referly::RewardProxy.new(self)
    end
  end
end