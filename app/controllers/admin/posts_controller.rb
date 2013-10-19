class Admin::PostsController < AdminController

  before_action :find_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if @post = Post.create(post_params)
      is_published?
      redirect_to admin_posts_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      is_published?
      redirect_to admin_posts_path
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
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
