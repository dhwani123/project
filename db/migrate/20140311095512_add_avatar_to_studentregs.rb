class AddAvatarToStudentregs < ActiveRecord::Migration
  def change
    add_column :studentregs, :avatar, :string
  end
end
