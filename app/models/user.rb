class User < ActiveRecord::Base
	has_many :wikis	
	after_initialize :default 

 
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

    def name
    	"#{first_name} #{last_name}"
    end

    def default
    	self.role ||= :standard
    end

    enum role: [:admin, :standard, :premium]  #can edit any public wiki
end
