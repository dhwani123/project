class Cubestudent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :evaluations, class_name: "RSEvaluation", as: :source
has_many :posts, :dependent => :destroy
has_many :comments, :dependent => :destroy
has_reputation :votes, source: { reputation: :votes, of: :posts }, aggregated_by: :sum


def voted_for?(post)
evaluations.where(target_type: post.class, target_id: post.id).present?
end

end
