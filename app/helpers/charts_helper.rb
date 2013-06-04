module ChartsHelper

	def retrieve_charts(country, type)

		# required to use nokogiri and from_xml conversion to hash 
   		require 'nokogiri'
      require 'open-uri'
   		require 'active_support/core_ext/hash/conversions'

   		# creates url with country code and type (free, grossing, ipadfree, ipadgrossing) and parses xml url
   		url = "https://itunes.apple.com/" + "#{country}" + "/rss/top" + "#{type}" + "applications/limit=50/genre=6014/xml"
   		doc = Nokogiri::XML(open(url))

   		# returns companies
    	# hash = Hash.from_xml(doc.to_s))

		# return doc.search('//im:artist', 'im' => "http://itunes.apple.com/rss").map{ |n| n.text }
		return doc.search("//im:artist", {"im" => "http://itunes.apple.com/rss"}).map{ |n| n.text }

    # doc.xpath("//im:artist", {"im" => "http://itunes.apple.com/rss"})
		
  	end

end