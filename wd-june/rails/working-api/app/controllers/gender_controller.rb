class GenderController < ApplicationController
  def search
    if params[:name]
      response = HTTParty.get("https://gender-api.com/get?name=#{params[:name]}&key=your_api_key")
      @result = JSON.parse(response.body)
    end
  end
end
