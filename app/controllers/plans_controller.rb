class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # shows all pricing memberships
  def index
    @plans = Plan.all.order(:id)

    render json: @plans
  end

  # shows all pricing memberships
  def show
    render json: @plan
  end

  # create new pricing memberships
  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      render json: @plan, status: :created
    else
      render json: @plan.errors, status: :unprocessable_entity
    end
  end

  # edit existing pricing memberships
  def update
    if @plan.update(plan_params)
      render json: @plan
    else
      render json: @plan.errors, status: :unprocessable_entity
    end
  end

  # delete pricing memberships
  def destroy
    @plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plan_params
      params.require(:plan).permit(:name, :price, :description, :pricing_id, :sessions_per_week, :session_times)
    end
end
