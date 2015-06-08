class Review < ActiveRecord::Base

	has_many :restaurants, :dependent => :nullify
	has_many :users

	validates_presence_of :submitted_review
	validates_presence_of :restaurant_id
end
