class Cuisine < ActiveRecord::Base

	 has_many :genres
	 has_many :restaurants, :through => :genres
	 

	 validates_presence_of :name
end
