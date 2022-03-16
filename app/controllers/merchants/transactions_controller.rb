class Merchants::TransactionsController < ApplicationController
  before_action :authenticate_merchant!

  # GET /merchants/transactions or /merchants/transactions.json
  layout 'merchant'
  def index
    @transactions = current_merchant.transactions.all
  end
end
