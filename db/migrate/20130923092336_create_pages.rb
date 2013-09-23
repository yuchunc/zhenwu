class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string  :name
      t.string  :title
      t.string  :description
      t.text    :content
      t.boolean :immortal
      t.string  :language
      t.integer :pagetype, default: 0
      t.integer :page_id

      t.timestamps
    end
  end
end
