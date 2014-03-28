class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :attachment
      t.string :postedby
      t.string :subject

      t.timestamps
    end
  end
end
