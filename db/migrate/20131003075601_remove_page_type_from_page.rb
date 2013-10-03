class RemovePageTypeFromPage < ActiveRecord::Migration
  def change
    remove_column :pages, :pagetype
  end
end
