module Referly
  class RewardProxy
    def initialize(client)
      @client = client
    end

    def all(options={})
      @client.get('/rewards', options).parsed_response
    end

    def create(options={})
      @client.post('/rewards', options).parsed_response
    end
  end
end