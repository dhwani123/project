class Studentreg < ActiveRecord::Base
	attr_accessible :firstname, :middlename, :lastname
	attr_accessible :dateofbirth ,:bloodgroup, :fname,:mname, :fqualification, :mqualification, :fincome, :mincome
	attr_accessible :grade
	attr_accessible :division
	attr_accessible :gender
	attr_accessible :photo


end
