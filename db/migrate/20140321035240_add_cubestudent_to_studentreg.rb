class AddCubestudentToStudentreg < ActiveRecord::Migration
  def change
    add_column :studentregs, :cubestudent, :resources
  end
end
