module Referly
  class AccountProxy
    def initialize(client)
      @client = client
    end

    def create(options={})
      @client.post('/accounts', options)['account_id']
    end
  end
end