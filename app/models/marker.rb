class Marker < ActiveRecord::Base
	
	geocoded_by :address
	#after_validation :geocode, :if => :address_changed?

	def self.search(search)
	   search_condition = search + "%"
	   find(:all, :conditions => ['county LIKE  ?', search_condition])
	end

end
