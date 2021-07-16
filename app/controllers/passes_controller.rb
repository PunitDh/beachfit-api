class PassesController < ApplicationController
	before_action :set_pass, only: [:show, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
  
	# GET /pass
	def index
	  @pass = Pass.all.order(:id)
  
	  render json: @pass
	end
  
	# GET /pass/1
	def show
	  render json: @pass
	end
  
	# POST /pass
	def create
	  @pass = Pass.new(pass_params)
  
	  if @pass.save
		render json: @pass, status: :created
	  else
		render json: @pass.errors, status: :unprocessable_entity
	  end
	end
  
	# PATCH/PUT /pass/1
	def update
	  if @pass.update(pass_params)
		render json: @pass
	  else
		render json: @pass.errors, status: :unprocessable_entity
	  end
	end
  
	# DELETE /pass/1
	def destroy
	  @pass.destroy
	end
  
	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_pass
		@pass = Pass.find(params[:id])
	  end
  
	  # Only allow a list of trusted parameters through.
	  def pass_params
		params.require(:pass).permit(:name, :total_cost, :class_cost, :pricing_id)
	  end	
end
