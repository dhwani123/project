class AddUserToComment < ActiveRecord::Migration
  def change
    add_column :comments, :postedby, :string
  end
end
