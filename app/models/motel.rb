class Motel < ActiveRecord::Base

  attr_accessible :title, :rating, :breakfast, :description, :price, :image, :address_attributes

  belongs_to :user
  has_many :rates, :dependent => :destroy
  has_many :comments
  has_one :address
  accepts_nested_attributes_for :address

  validates :title, presence: true
  validates :rating, presence: true
  validates :title, length: { minimum: 5}

  mount_uploader :image, ImageUploader
end
