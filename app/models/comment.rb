class Comment < ActiveRecord::Base
	acts_as_votable
  
  belongs_to :post
  belongs_to :cubestudent

  attr_accessible :body

 validates_presence_of :body, :message => "comment error"
 attr_accessible :body

end
