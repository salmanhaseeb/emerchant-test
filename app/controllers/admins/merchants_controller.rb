class Admins::MerchantsController < ApplicationController
  before_action :set_merchant, only: %i[show edit update destroy]

  # GET /admins/merchants or /admins/merchants.json
  def index
    @merchants = Merchant.all
  end

  # GET /admins/merchants/1 or /admins/merchants/1.json
  def show; end

  # GET /admins/merchants/new
  def new
    @merchant = Merchant.new
  end

  # GET /admins/merchants/1/edit
  def edit; end

  # POST /admins/merchants or /admins/merchants.json
  def create
    @merchant = Merchant.new(merchant_params)

    respond_to do |format|
      if @admins_merchant.save
        format.html { redirect_to merchant_url(@merchant), notice: 'Merchant was successfully created.' }
        format.json { render :show, status: :created, location: @merchant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/merchants/1 or /admins/merchants/1.json
  def update
    respond_to do |format|
      if @merchant.update(merchant_params)
        format.html { redirect_to merchant_url(@merchant), notice: 'Merchant was successfully updated.' }
        format.json { render :show, status: :ok, location: @merchant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/merchants/1 or /admins/merchants/1.json
  def destroy
    @merchant.destroy

    respond_to do |format|
      format.html { redirect_to merchants_url, notice: 'Merchant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_merchant
    @merchant = Merchant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def merchant_params
    params.require(:merchant).permit(:name, :status, :description)
  end
end
