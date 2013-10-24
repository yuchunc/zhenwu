class Admin::TagsController < AdminController

  def create
    if @tag = Tag.create(tag_params)
      render text: 'ok'
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      render text: 'ok'
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      render text: 'ok'
    end
  end

  private

    def tag_params
      params.require(:tag).permit(:name)
    end

end
