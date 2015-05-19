class Restaurant < ActiveRecord::Base

	belongs_to :cuisine
	belongs_to :neighborhood

	validates_presence_of :name
	validates_presence_of :address
	
end
