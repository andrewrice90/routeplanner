class User < ActiveRecord::Base
	has_many :vehicles
	mount_uploader :profileImage, ImageUploader
	has_secure_password
	validates_uniqueness_of :email
	validates :password_confirmation, presence: true
	validates :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end