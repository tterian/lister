require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get signup_path
    assert_response :success
  end

end
