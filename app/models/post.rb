class Post < ActiveRecord::Base
	acts_as_taggable
	has_many :comments, :dependent => :destroy
	belongs_to :cubestudent
	belongs_to :cubeteacher
    
	attr_accessible :body, :title, :tag_list
	validates_presence_of :body, :title, :tag_list
	   
   
	
   	has_reputation :votes, source: :cubestudent, aggregated_by: :sum


	def self.search(search)
		if search
      			where 'title LIKE ? OR body LIKE ? ', "%#{search}%", "%#{search}%"
      	else
   				all
 		end
 	end

 	

 	 	
end
