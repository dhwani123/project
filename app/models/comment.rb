class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :cubestudent
  attr_accessible :body
end
