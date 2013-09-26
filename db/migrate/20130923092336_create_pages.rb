class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string  :name
      t.string  :title
      t.string  :description
      t.text    :body
      t.boolean :locked, default: false
      t.boolean :immortal
      t.string  :language
      t.integer :pagetype, default: 0
      t.integer :page_ida
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
