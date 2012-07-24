require 'referly/version'
require 'referly/client'
require 'referly/account_proxy'

module Referly
  class << self
    def new(key, secret)
      Referly::Client.new(key, secret)
    end
  end
end