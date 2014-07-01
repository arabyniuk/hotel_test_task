class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :motels

  attr_accessible :email, :password, :password_confirmation

  # def to_s
  #   "#{fname} #{lname}"
  # end

end
