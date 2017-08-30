require 'test_helper'

class GenderControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get gender_search_url
    assert_response :success
  end

end
