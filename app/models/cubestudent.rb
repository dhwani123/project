class Cubestudent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email
  attr_accessible :password       


has_many :posts, :dependent => :destroy
has_many :comments, :dependent => :destroy
attr_accessible :email, :password, :password_confirmation

end
