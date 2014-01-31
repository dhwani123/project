class Studentreg < ActiveRecord::Base
	attr_accessible :firstname
	attr_accessible :dateofbirth 
	attr_accessible :grade
	attr_accessible :division
	attr_accessible :gender
end
