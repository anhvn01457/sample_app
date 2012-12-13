class StaticPagesController < ApplicationController
  def home
  	client_ip = request.remote_ip
  	geoip ||= GeoIP.new("#{Rails.root}/db/GeoLiteCity.dat")
		if client_ip != "127.0.0.1" #todo: check for other local addresses or set default value
			location_location = geoip.country(client_ip)
			if location_location != nil
				@country = location_location
			end
		end
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end
end
