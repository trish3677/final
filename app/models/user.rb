class User < ActiveRecord::Base

	belongs_to :review
	
	validates :email, :uniqueness => true, :allow_nil => false
    validates :password, :presence => true
	
end
