class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  def index
    @posts = Post.all.order(:created_at)

    render json: @posts
  end

  def featured
    @posts = Post.all.order(:created_at)[0..3]

    @posts.each do |post|
      if post.image_url.nil? and (not post.image.url.nil?)
        post.image_url = post.image.url
      end
    end

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    # raise params.inspect
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
      params.require(:post).permit(:title, :body, :blog_id, :image, :video, :image_url)
    end
end
