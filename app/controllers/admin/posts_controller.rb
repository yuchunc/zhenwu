class Admin::PostsController < AdminController
  has_scope :published_filter
  has_scope :title_filter

  before_action :find_post, only: [:edit, :update, :destroy, :toggle_published]

  def index
    @posts = apply_scopes( Post ).order('created_at DESC')
    @tags = Tag.all
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

  def toggle_published
    @post.update_columns(published: !@post.published)
    render text: 'ok'
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
