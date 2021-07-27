class PricingsController < ApplicationController
  before_action :set_pricing, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # shows all pricing 
  def index
    @pricings = Pricing.all

    render json: @pricings
  end

  # shows all pricing 
  def show
    render json: @pricing
  end

  # create new pricing
  def create
    @pricing = Pricing.new(pricing_params)

    if @pricing.save
      render json: @pricing, status: :created
    else
      render json: @pricing.errors, status: :unprocessable_entity
    end
  end

  # edit existing pricing
  def update
    if @pricing.update(pricing_params)
      render json: @pricing
    else
      render json: @pricing.errors, status: :unprocessable_entity
    end
  end

  # delete pricing
  def destroy
    @pricing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pricing
      @pricing = Pricing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pricing_params
      params.require(:pricing).permit(:user_id)
    end
end
