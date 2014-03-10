class Vehicle < ActiveRecord::Base
	belongs_to :user
	mount_uploader :carImageUploader, ImageUploader
end
