class Hotel < ActiveRecord::Base

	belongs_to :user
  	attr_accessible :title, :rating, :breakfast, :description
	mount_uploader :image, ImageUploader
end
