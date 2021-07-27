class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]
  
  # shows all blogs
  def index
    @blogs = Blog.all

    render json: @blogs
  end

  # shows all blogs
  def show
    render json: @blog
  end

  # create a new blog
  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      render json: @blog, status: :created
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # edit existing blog 
  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # delete blog 
  def destroy
    @blog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:user_id)
    end
end
