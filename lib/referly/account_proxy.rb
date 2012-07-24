module Referly
  class AccountProxy
    def initialize(client)
      @client = client
    end

    def create(params={})
      @client.post('/accounts', params)['account_id']
    end
  end
end