class Subject < ActiveRecord::Base
	belongs_to :posts
	attr_accessible :name
end
