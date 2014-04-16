class Admin < ActiveRecord::Base
		has_secure_password
	validates :password_confirmation, presence: true
	
	validates :email, presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
