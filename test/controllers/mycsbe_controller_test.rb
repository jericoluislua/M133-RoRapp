require 'test_helper'

class MycsbeControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mycsbe_show_url
    assert_response :success
  end

end
