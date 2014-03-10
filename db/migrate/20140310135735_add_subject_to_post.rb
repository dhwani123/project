class AddSubjectToPost < ActiveRecord::Migration
  def change
    add_column :posts, :subject_tokens, :string
  end
end
