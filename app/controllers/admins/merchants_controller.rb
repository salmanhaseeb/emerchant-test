class Admins::MerchantsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @merchants = Merchant.all
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
