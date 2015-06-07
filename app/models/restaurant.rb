class Restaurant < ActiveRecord::Base

	has_many :genres
	has_many :cuisines, :through => :genres

	has_many :visits
	has_many :users, :through => :visits

	belongs_to :neighborhood
	belongs_to :review

	validates_presence_of :name
	validates_presence_of :address
	
end
