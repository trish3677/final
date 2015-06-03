class User < ActiveRecord::Base

	has_secure_password

	belongs_to :review
	
	validates :email, :uniqueness => true, :allow_nil => false
    validates :password, :presence => true
	
end
