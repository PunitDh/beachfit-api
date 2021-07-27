class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # shows all blogs posts
  def index
    @posts = Post.all.order(:created_at)

    attach_image

    render json: @posts
  end

  # shows featured blog post on top of page
  def featured
    @posts = Post.all.order(:created_at)[0..3]

    attach_image

    render json: @posts
  end

  # shows all blogs posts
  def show
    @post.image_url = @post.image.url
    render json: @post
  end

  # create a new blog post
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # edit existing blog post
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # delete blog post
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.permit(:title, :body, :blog_id, :image, :video, :image_url)
    end

    def attach_image
      @posts.each do |post|
        if post.image_url.nil? and (not post.image.url.nil?)
          post.image_url = post.image.url
        end
      end
    end
end
