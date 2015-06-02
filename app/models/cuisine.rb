class Cuisine < ActiveRecord::Base

	 has_many :types
	 has_many :restaurants, :through => :types
	 

	 validates_presence_of :name
end
