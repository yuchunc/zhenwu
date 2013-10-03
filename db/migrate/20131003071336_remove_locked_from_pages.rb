class RemoveLockedFromPages < ActiveRecord::Migration
  def change
    remove_column :pages, :locked
  end
end
