require 'Nokogiri'
require 'open-uri'

f = File.open("bridges.xml")
doc = Nokogiri::XML(f)
f.close

markerList = []

@doc.xpath("Markers/marker").each do |x|
    name = x.at('name').element_children().text()      
    height = x.at('height').element_children().text()
    markerList.push([name, height])
end

markerList.each do |x|
    Marker.where(:name => x[1], :height => Integer(x[0])).first_or_create
end


puts doc.at_css("#name").text.strip
puts doc.at_css("#height").text.strip