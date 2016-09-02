class User < ActiveRecord::Base
	has_many :wikis	

  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    def name
    	"#{first_name} #{last_name}"
    end
end
