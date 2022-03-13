class Admins::MerchantsController < ApplicationController
  before_action :set_admins_merchant, only: %i[ show edit update destroy ]

  # GET /admins/merchants or /admins/merchants.json
  def index
    @admins_merchants = Merchant.all
  end

  # GET /admins/merchants/1 or /admins/merchants/1.json
  def show
  end

  # GET /admins/merchants/new
  def new
    @admins_merchant = Merchant.new
  end

  # GET /admins/merchants/1/edit
  def edit
  end

  # POST /admins/merchants or /admins/merchants.json
  def create
    @admins_merchant = Merchant.new(admins_merchant_params)

    respond_to do |format|
      if @admins_merchant.save
        format.html { redirect_to admins_merchant_url(@admins_merchant), notice: "Merchant was successfully created." }
        format.json { render :show, status: :created, location: @admins_merchant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admins_merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/merchants/1 or /admins/merchants/1.json
  def update
    respond_to do |format|
      if @admins_merchant.update(admins_merchant_params)
        format.html { redirect_to admins_merchant_url(@admins_merchant), notice: "Merchant was successfully updated." }
        format.json { render :show, status: :ok, location: @admins_merchant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admins_merchant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/merchants/1 or /admins/merchants/1.json
  def destroy
    @admins_merchant.destroy

    respond_to do |format|
      format.html { redirect_to admins_merchants_url, notice: "Merchant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admins_merchant
      @admins_merchant = Merchant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admins_merchant_params
      params.fetch(:admins_merchant, {})
    end
end
