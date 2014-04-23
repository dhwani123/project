class Cubeteacher < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         attr_accessible :email, :password, :password_confirmation

   has_many :ratings      
end
