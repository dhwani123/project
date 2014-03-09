class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :cubestudent

	belongs_to :cubeteacher


	attr_accessible :body, :title, :subject
	validates_presence_of :body, :title, :subject
	   
   	attr_accessible :body, :title, :subject_tokens
	#acts_as_taggable_on :tags

	has_reputation :votes, source: :cubestudent, aggregated_by: :sum
	has_many :subjects

	def self.search(search)
		if search
      			where 'title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%"
        else
   				scoped
 		end
 	end


 	def subject_tokens=(ids)
 		self.subject_ids = ids.split(",")
 	end

end
