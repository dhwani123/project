class Cubestudent < ActiveRecord::Base
  has_merit

  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:lockable,:confirmable,
  attr_accessible :email, :password, :password_confirmation
  acts_as_tagger
   has_one :studentreg, :dependent => :destroy
   has_reputation :votes, source: { reputation: :votes, of: :posts }, aggregated_by: :sum
   has_many :evaluations, class_name: "ReputationSystem::Evaluation", as: :source
has_many :posts, :dependent => :destroy
has_many :comments, :dependent => :destroy

def voted_for?(post)
	evaluations.where(target_type: post.class, target_id: post.id).present?
end
end
