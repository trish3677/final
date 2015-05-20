class Restaurant < ActiveRecord::Base

	belongs_to :cuisine
	belongs_to :neighborhood
	belongs_to :review

	validates_presence_of :name
	validates_presence_of :address
	
end
