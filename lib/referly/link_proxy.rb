module Referly
  class LinkProxy
    def initialize(client)
      @client = client
    end

    def all(params={})
      @client.get('/links', params)['links']
    end

    def create(params={})
      @client.post('/links', params).parsed_response
    end
  end
end