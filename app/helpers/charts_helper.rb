module ChartsHelper

	def retrieve_charts_companies(country, type)

		# required to use nokogiri and from_xml conversion to hash 
   		require 'nokogiri'
      require 'open-uri'
   		require 'active_support/core_ext/hash/conversions'

   		# creates url with country code and type (free, grossing, ipadfree, ipadgrossing) and parses xml url
   		url = "https://itunes.apple.com/" + "#{country}" + "/rss/top" + "#{type}" + "applications/limit=50/genre=6014/xml"
   		doc = Nokogiri::XML(open(url))

      # creates two arrays for companies and app names
      companies = Array.new
      applications = Array.new

      # loads app names
      doc.search("//im:artist", {"im" => "http://itunes.apple.com/rss"}).each do |company|
        companies << company.text
      end

      doc.search("//im:name", {"im" => "http://itunes.apple.com/rss"}).each do |application|
        applications << application.text
      end

      myhash = {}
      companies.zip(applications) {|c,a| myhash[c] = a }
      return myhash

  end

  def retrieve_charts_applications(country, type)

    # required to use nokogiri and from_xml conversion to hash 
      require 'nokogiri'
      require 'open-uri'
      require 'active_support/core_ext/hash/conversions'

      # creates url with country code and type (free, grossing, ipadfree, ipadgrossing) and parses xml url
      url = "https://itunes.apple.com/" + "#{country}" + "/rss/top" + "#{type}" + "applications/limit=50/genre=6014/xml"
      doc = Nokogiri::XML(open(url))

      # creates two arrays for companies and app names
      applications = Array.new

      # loads app names
      doc.search("//im:name", {"im" => "http://itunes.apple.com/rss"}).each do |application|
        applications << application.text
      end

      return applications
  end

end

