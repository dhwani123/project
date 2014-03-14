class Post < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :cubestudent
	belongs_to :cubeteacher
    has_many :subjects
	attr_accessible :body, :title, :subject_tokens
	validates_presence_of :body, :title
	   
   	attr_reader :subject_tokens
	
   	has_reputation :votes, source: :cubestudent, aggregated_by: :sum


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
