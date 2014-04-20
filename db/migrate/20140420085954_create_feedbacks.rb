class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :subject
      t.text :message
      t.string :feedemail
      t.string :vote

      t.timestamps
    end
  end
end
