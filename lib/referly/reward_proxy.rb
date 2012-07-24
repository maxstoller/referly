module Referly
  class RewardProxy
    def initialize(client)
      @client = client
    end

    def all(params={})
      @client.get('/rewards', params).parsed_response
    end

    def create(params={})
      @client.post('/rewards', params).parsed_response
    end
  end
end