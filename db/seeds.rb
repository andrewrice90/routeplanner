# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'nokogiri'

doc = Nokogiri::XML(File.open("#{Rails.root}/public/bridges.xml"))

marker = doc.xpath("//marker")
marker.each do |mymarker|
	address = mymarker.xpath("name").text
	height = mymarker.xpath("height").text
	latitude = mymarker.xpath("lat").text
	longitude = mymarker.xpath("lng").text
	Marker.create(:address => address, :height => height, :latitude => latitude, :longitude => longitude)
end