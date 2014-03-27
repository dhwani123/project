class AddCubestudentToStudentreg < ActiveRecord::Migration
  def change
    add_column :studentregs, :cubestudent
  end
end
