class Assignment < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
	attr_accessible :name, :subject, :attachment
	validates :name, presence: true
	validates :subject, presence: true
end
