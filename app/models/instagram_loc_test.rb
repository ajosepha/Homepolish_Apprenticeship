 require 'instagram'


    #@user_obj = user_obj
    Instagram.configure do |config|
      config.client_id ='2485542ff77048aeab4f84d5c607f54a'
      config.client_secret = '1fac4c466ac74d66bd7740674d5339b6'
      config.access_token = '225440768.2485542.3da25a35bab5486f831de5377915f66f'
    end
    #@data = Instagram.user_followed_by(user_obj.authentications.find_by_provider("instagram").uid, :count => -1)


  def find_photo_location(id)
    results = Instagram.user_recent_media(id)
    locations = []
    photos = results.first
    #this returns something strange

      locations << {:latitude => photos.location[:latitude], :longitude => photos.location[:latitude]}

  end
  #    photo1.location
  #     #find the lat and long of a photo
  #   #find all locations of a users most recent 20 photos
  #     locations = []
  #     results.each do |photo|
  #         locations << photo.location
  #     end
  #   locations
  # end

  #end

#ashley 11212585
