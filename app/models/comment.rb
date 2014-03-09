class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :cubestudent
<<<<<<< HEAD
  attr_accessible :body
=======
 validates_presence_of :body, :message => "comment error"
 attr_accessible :body

>>>>>>> 4d1d05d1f3011e8b3f15f66581160515c8ea2c9a
end
