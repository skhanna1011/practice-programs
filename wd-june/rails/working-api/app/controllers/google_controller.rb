class GoogleController < ApplicationController
  def distance
    # https://maps.googleapis.com/maps/api/distancematrix/json?origins=Vancouver+BC|Seattle&destinations=San+Francisco|Victoria+BC&mode=bicycling&language=fr-FR&key=api_key
    if params[:source] && params[:destination]
      response = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params[:source]}&destinations=#{params[:destination]}&mode=driving&language=en-EN&key=Api_key")
      @result = JSON.parse(response.body)
    end
  end

  def geocoding
    # https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=YOUR_API_KEY
    if params[:address]
      response = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{params[:address]},&key=Api_key")
      @result = JSON.parse(response.body)
    end
  end
end
