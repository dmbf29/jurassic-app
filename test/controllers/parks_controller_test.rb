require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parks_show_url
    assert_response :success
  end

end
