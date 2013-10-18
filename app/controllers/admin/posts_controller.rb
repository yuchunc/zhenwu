class Admin::PostsController < AdminController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    is_published?
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

    def is_published?
      @post.update(published: params[:post][:published] ? true : false)
    end

    def post_params
      params.require(:post).permit(:title,
                                   :content
                                  )
    end

end
