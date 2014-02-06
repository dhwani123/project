class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :cubestudent
 validates_presence_of :body, :message => "comment error"

end
