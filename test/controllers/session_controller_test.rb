require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get session_login_url
    assert_response :success
  end

  test "should get welcome" do
    get session_welcome_url
    assert_response :success
  end

end
