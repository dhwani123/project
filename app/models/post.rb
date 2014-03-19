class Post < ActiveRecord::Base
	acts_as_taggable
	has_many :comments, :dependent => :destroy
	belongs_to :cubestudent
	belongs_to :cubeteacher
    
	attr_accessible :body, :title, :tag_list_tokens
	validates_presence_of :body, :title
	   
   	attr_reader :tag_list_tokens
	
   	has_reputation :votes, source: :cubestudent, aggregated_by: :sum


	def self.search(search)
		if search
      			where 'title LIKE ? OR body LIKE ? ', "%#{search}%", "%#{search}%"
      	else
   				scoped
 		end
 	end

 	def self.tokens(query)
 		tags = ActsAsTaggableOn::Tag.where("tags.name LIKE ?", "%#{query}")
 		if tags.empty?
 			[{id: "#{query}", name: "Add new tag: \"#{query}\""}]
 		else
 			tags
 		end
 	end

 	def tag_list_tokens=(ids)
 		self.tag_ids = ids.split(",")
 	end
 	
end
