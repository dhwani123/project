class Cubestudent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         attr_accessible :email, :password, :passwordconfirmation

<<<<<<< HEAD
  attr_accessible :email
  attr_accessible :password       


=======
has_many :evaluations, class_name: "RSEvaluation", as: :source
>>>>>>> 4d1d05d1f3011e8b3f15f66581160515c8ea2c9a
has_many :posts, :dependent => :destroy
has_many :comments, :dependent => :destroy
has_reputation :votes, source: { reputation: :votes, of: :posts }, aggregated_by: :sum

<<<<<<< HEAD
=======

def voted_for?(post)
evaluations.where(target_type: post.class, target_id: post.id).present?
end

>>>>>>> 4d1d05d1f3011e8b3f15f66581160515c8ea2c9a
end
