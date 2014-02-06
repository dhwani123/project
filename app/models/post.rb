class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :cubestudent
	
	validates_presence_of :body, :title, :subject
	has_reputation :votes, source: :cubestudent, aggregated_by: :sum
end
