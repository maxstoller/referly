require 'referly/version'
require 'referly/client'
require 'referly/account_proxy'
require 'referly/link_proxy'
require 'referly/reward_proxy'

module Referly
  class << self
    def new(key, secret)
      Referly::Client.new(key, secret)
    end
  end
end