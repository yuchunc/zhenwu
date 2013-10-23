class RemoveLockFromPagesAndFixTypo < ActiveRecord::Migration
  def change
    #remove_column :pages, :lock
    rename_column :pages, :page_ida, :page_id
  end
end
