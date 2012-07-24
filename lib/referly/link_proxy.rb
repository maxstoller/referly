module Referly
  class LinkProxy
    def initialize(client)
      @client = client
    end

    def all(options={})
      @client.get('/links', options).parsed_response
    end

    def create(params={})
      @client.post('/links', options).parsed_response
    end
  end
end