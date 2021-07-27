class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # shows all FAQs
  def index
    @faqs = Faq.all

    render json: @faqs
  end

  # shows all FAQs
  def show
    render json: @faq
  end

  # create a new FAQ
  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      render json: @faq, status: :created
    else
      render json: @faq.errors, status: :unprocessable_entity
    end
  end

  # edit existing FAQ
  def update
    if @faq.update(faq_params)
      render json: @faq
    else
      render json: @faq.errors, status: :unprocessable_entity
    end
  end

  # delete FAQ
  def destroy
    @faq.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faq_params
      params.require(:faq).permit(:user_id)
    end
end
