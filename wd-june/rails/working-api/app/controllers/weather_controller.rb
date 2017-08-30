class WeatherController < ApplicationController
  def search
    if params[:name]
      response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{params[:name]}&APPID=abbf3618cf5e2d26e6f805f567e94857&units=metric")
      @result = JSON.parse(response.body)
    end
  end
end
