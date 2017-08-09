require 'forwardable'
require 'rest-client'
require 'json' # TODO: replace json with oj (speed)
require_relative 'insight/api'
require_relative 'insight/connection'

module Insight

  extend Forwardable

  attr_writer :api

  MAIN_CHAIN = 'btc'
  TEST_CHAIN = 'btc-testnet'
  BCH_CHAIN  = 'bch'

  def api(network: MAIN_CHAIN)
    @api ||= API.new network: network
  end

  def_delegators :@api, :url=, :network=, :blocks, :block, :block_raw, :transaction, :rawtx, :push_transaction, :address, :address_balance, :address_total_received, :address_total_sent, :address_unconfirmed_balance, :address_unspent_transactions, :estimatefee, :blocks_last

  alias :chain_tip :blocks_last

end
