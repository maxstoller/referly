module Referly
  class RewardProxy
    def initialize(client)
      @client = client
    end

    def all(params={})
      @client.get('/rewards', params).parsed_response
    end

    def create(params={})
      params[:earned_on]  ||= Time.now.strftime('%F')
      params[:payable_on] ||= (Time.now + 2592000).strftime('%F')

      @client.post('/rewards', params).parsed_response
    end
  end
end