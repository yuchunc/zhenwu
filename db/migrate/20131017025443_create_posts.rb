class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.datetime :published_datetime
      t.string :sane_name

      t.timestamps
    end
  end
end
