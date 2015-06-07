class User < ActiveRecord::Base

	has_secure_password

	belongs_to :review

	has_many :visits
	has_many :restaurants, :through => :visits
	
	validates :email, :uniqueness => true, :allow_nil => false
    validates :password, :presence => true
	
end
