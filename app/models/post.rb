class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :cubestudent
	attr_accessible :body, :title, :subject
	validates_presence_of :body, :title, :subject
end
