class AddAttachmentPhotoToStudentregs < ActiveRecord::Migration
  def self.up
    change_table :studentregs do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :studentregs, :photo
  end
end
