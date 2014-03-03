class AddIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :cubestudent_id, :integer
  end
end
