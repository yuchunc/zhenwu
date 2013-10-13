class Admin::PagesController < AdminController

  before_action :find_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
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
    if @page.update(page_params)
      redirect_to admin_pages_path
    end
  end

  def destroy
  end

  private

    def find_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:name, :title, :description, :body)
    end
end
