class Rate < ActiveRecord::Base
	attr_accessible :value

	belongs_to :motel
	validates_presence_of :motel
	validates_inclusion_of :value, :in => 1..10
end
