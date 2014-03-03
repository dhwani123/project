class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :cubestudent
<<<<<<< HEAD
	attr_accessible :body, :title, :subject
	validates_presence_of :body, :title, :subject
	attr_accessible :content
    
    has_reputation :votes, source: :cubestudent , aggregated_by: :sum
=======
	
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
>>>>>>> 4d1d05d1f3011e8b3f15f66581160515c8ea2c9a
end
