require 'test_helper'

class DinosaursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dinosaurs_new_url
    assert_response :success
  end

end
