class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # shows all FAQ question and answers
  def index
    @items = Item.all.order(:id)

    render json: @items
  end

  # shows all FAQ question and answers
  def show
    render json: @item
  end

  # create new FAQ question and answer
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # edit existing FAQ question and answer
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # delete FAQ question and answer
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:question, :answer, :faq_id)
    end
end
