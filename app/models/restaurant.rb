class Restaurant < ActiveRecord::Base

	has_many :types
	has_many :cuisines, :through => :types

	belongs_to :neighborhood
	belongs_to :review

	validates_presence_of :name
	validates_presence_of :address
	
end
