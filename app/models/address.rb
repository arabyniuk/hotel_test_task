class Address < ActiveRecord::Base
	
	attr_accessible :country, :state, :city, :street
	belongs_to :motel
end
