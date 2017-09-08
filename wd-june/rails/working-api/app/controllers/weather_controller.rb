class WeatherController < ApplicationController
  def search
    if params[:name]
      response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{params[:name]}&APPID=your_api_key&units=metric")
      @result = JSON.parse(response.body)
    end
  end
end
