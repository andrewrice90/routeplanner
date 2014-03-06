require 'Nokogiri'
require 'open-uri'

url = "http://localhost:3000/pages/help"

f = File.open("bridges.xml")
doc = Nokogiri::XML(f)
f.close

puts doc.at_css("#marker").text.strip
puts doc.at_css("#name").text.strip
puts doc.at_css("#height").text.strip