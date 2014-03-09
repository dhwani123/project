class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :cubestudent

  attr_accessible :body

 validates_presence_of :body, :message => "comment error"
 attr_accessible :body

end
