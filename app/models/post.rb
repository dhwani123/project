class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :cubestudent
	attr_accessible :body, :title, :subject
	validates_presence_of :body, :title, :subject
	attr_accessible :content
    
    has_reputation :votes, source: :cubestudent , aggregated_by: :sum
end
