require 'httparty'

module Referly
  class Client
    include HTTParty
    base_uri 'https://refer.ly/api/120701'

    def initialize(key, secret)
      self.class.basic_auth key, secret
    end

    def post(path, options)
      self.class.post(path, body: options)
    end

    def get(path, options)
      self.class.get(path, query: options)
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