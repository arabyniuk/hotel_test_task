class Comment < ActiveRecord::Base
	attr_accessible :description
	belongs_to :motel
end
