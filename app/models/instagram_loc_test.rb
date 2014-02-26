require 'instagram'
require 'geocoder'

class FindLocation
  Instagram.configure do |config|
    config.client_id ='2485542ff77048aeab4f84d5c607f54a'
    config.client_secret = '1fac4c466ac74d66bd7740674d5339b6'
    config.access_token = '225440768.2485542.3da25a35bab5486f831de5377915f66f'
  end

  def find_photo_location(id)
    locations = []
    results = Instagram.user_recent_media(id)
    9.times do |i|
      locations << {:latitude => results[i].location[:latitude], :longitude => results[i].location[:longitude]}
    end
    locations
  end

  def geo_details(locations)
    geodetails = []
    locations.each do |element|
      geodetails << Geocoder.search("#{element[:latitude]}, #{element[:longitude]}")
    end
    geodetails
  end 

  def location_parse(geo_details)
    geo_details.map { |info| info[0].data["formatted_address"]}
  end

  def address_regex(addresses)
    regex = /^.+,\s([\w\s]*,\s[A-Z][A-Z])\s.*$/
    addresses.map { |address| address.match(regex)[1] }
  end

  def get_location(id)
    locations = find_photo_location(id)
    geo_details = geo_details(locations)
    location_parse = location_parse(geo_details)
    address_regex = address_regex(location_parse)
  end
end

#City
  # geodetails[0][0].data["address_components"][3]["long_name"]
  #State
  # geodetails[0][0].data["address_components"][5]["long_name"]

  # regex = /^.+,\s([\w\s]*,\s[A-Z][A-Z])\s.*$/
  # result = stuff.each do |string|
  #   new_result << string.match(regex)[1]
  # end

#ashley 11212585
# user.address_regex(user.location_parse(user.geo_details(user.find_photo_location(11212585))))
