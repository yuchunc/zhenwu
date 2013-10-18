class Admin::PostsController < AdminController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to admin_posts_path
    end
  end

  def destroy
  end

  private

    def find_post
      @post = Post.find(params[:id])
    end

    def post_params
    end


end
