class AddEmailToStudentreg < ActiveRecord::Migration
  def change
    add_column :studentregs, :myemail, :string
  end
end
