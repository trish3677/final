class Restaurant < ActiveRecord::Base

	has_many :genres, :dependent => :delete_all
	has_many :cuisines, :through => :genres

	has_many :visits, :dependent => :delete_all
	has_many :users, :through => :visits

	belongs_to :neighborhood
	belongs_to :review

	validates_presence_of :name
	validates_presence_of :address
	
end
