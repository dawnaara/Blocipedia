class Wiki < ActiveRecord::Base
  belongs_to :user

  # has_many :collaborators
  # has_many :users, through: :collaborators  # wiki.users.include?(some_user)
end
