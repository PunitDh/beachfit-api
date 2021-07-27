class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  def index
    @posts = Post.all.order(:created_at)

    attach_image

    render json: @posts
  end

  def featured
    @posts = Post.all.order(:created_at)[0..3]

    attach_image

    render json: @posts
  end

  # GET /posts/1
  def show
    @post.image_url = @post.image.url
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
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
