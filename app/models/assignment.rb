class Assignment < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	validates :name, presence: true
	validates :subject, presence: true
	attr_accessible :name, :subject, :postedby, :attachment
end
