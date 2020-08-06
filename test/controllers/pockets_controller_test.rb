require 'test_helper'

class PocketsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pockets_new_url
    assert_response :success
  end

end
