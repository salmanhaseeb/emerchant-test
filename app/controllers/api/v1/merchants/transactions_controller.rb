class Api::V1::Merchants::TransactionsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }
  before_action :set_merchant, :authenticate

  def create
    @transaction = @current_merchant.transactions.new(transaction_params)
    if @transaction.save
      render json: @transaction
    else
      render json: { message: @transaction.errors }
    end
  end

  private

  def authenticate
    if user = authenticate_with_http_basic { |u, p| @merchant.authenticate(u, p) }
      @current_merchant = user
    else
      request_http_basic_authentication
    end
  end
  
  def set_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :customer_email, :customer_phone, :status, :type, :authorize_transaction_id, :charge_transaction_id)
  end
end