require "test_helper"

class ClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get classes_login_url
    assert_response :success
  end
end
