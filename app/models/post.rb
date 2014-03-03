class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :cubestudent
	
	attr_accessible :body, :title
	#acts_as_taggable_on :tags
	validates_presence_of :body, :title
	has_reputation :votes, source: :cubestudent, aggregated_by: :sum
	def self.search(search)
		if search
      			where 'title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%"
        else
   				scoped
 		end
 	end
end
