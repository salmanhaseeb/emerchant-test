class Admins::TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show]
  before_action :authenticate_admin!

  # GET /admins/transactions or /admins/transactions.json
  def index
    @transactions = Transaction.all
  end

  # GET /admins/transactions/1 or /admins/transactions/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end
end
