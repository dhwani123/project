class Studentreg < ActiveRecord::Base

	
	attr_accessible :avatar
	belongs_to :cubestudent
	
	attr_accessible :firstname, :middlename, :lastname, :foccupation, :moccupation, :fincome, :mincome, :fcontactnumber, :mcontactnumber
	attr_accessible :femailid, :memailid, :dateofjoining, :address, :contactnumber
	attr_accessible :dateofbirth , :bloodgroup, :fname,:mname, :fqualification, :mqualification 
	attr_accessible :grade, :division, :gender
	validates_numericality_of :fincome, :mincome, :contactnumber
	validates_length_of :contactnumber, minimum: 7, maximum: 10

	mount_uploader :avatar, AvatarUploader
end
