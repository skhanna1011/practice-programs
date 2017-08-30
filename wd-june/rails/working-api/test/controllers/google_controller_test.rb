require 'test_helper'

class GoogleControllerTest < ActionDispatch::IntegrationTest
  test "should get distance" do
    get google_distance_url
    assert_response :success
  end

end
