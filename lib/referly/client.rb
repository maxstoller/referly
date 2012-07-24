require 'httparty'

module Referly
  class Client
    include HTTParty
    base_uri 'https://refer.ly/api/120701'

    def initialize(key, secret)
      self.class.basic_auth key, secret
    end

    def post(path, params)
      self.class.post(path, body: params)
    end

    def accounts
      Referly::AccountProxy.new(self)
    end
  end
end