class AddPostidToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :post_id, :integer
  end
end
