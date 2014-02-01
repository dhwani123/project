class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :postedby
      t.integer :postedbyid

      t.timestamps
    end
  end
end
