class GoogleController < ApplicationController
  def distance
    # https://maps.googleapis.com/maps/api/distancematrix/json?origins=Vancouver+BC|Seattle&destinations=San+Francisco|Victoria+BC&mode=bicycling&language=fr-FR&key=api_key
    if params[:source] && params[:destination]
      response = HTTParty.get("https://maps.googleapis.com/maps/api/distancematrix/json?origins=#{params[:source]}&destinations=#{params[:destination]}&mode=driving&language=en-EN&key=AIzaSyClh8vxsdRZtSIbrr81xCKu2Awr8BqbQAM")
      @result = JSON.parse(response.body)
    end
  end
end
