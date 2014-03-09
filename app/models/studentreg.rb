class Studentreg < ActiveRecord::Base

	has_one :cubestudent

	attr_accessible :firstname, :middlename, :lastname
	attr_accessible :dateofbirth ,:bloodgroup, :fname,:mname, :fqualification, :mqualification 
	#validates_numericality_of :fincome, :mincome, :contactnumber
	#validates_length_of :contactnumber, minimum: 7, maximum: 10
	#attr_accessible :grade
	#attr_accessible :division
	#attr_accessible :gender
	#attr_accessible :photo

end
