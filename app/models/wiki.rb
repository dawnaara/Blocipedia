class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators  # wiki.users.include?(some_user)

  def public?
  	!private?
  end

  def collaborator_for(user)
  	collaborators.where(user_id: user.id).first
  end
end
