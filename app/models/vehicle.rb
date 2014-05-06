class Vehicle < ActiveRecord::Base
	belongs_to :user
	mount_uploader :carImageUploader, ImageUploader

	validates :height,  :numericality => { :greater_than => 0, :less_than => 7}
end
