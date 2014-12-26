require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	test "invalid signup information" do
		get signup_path
		assert_no_difference 'User.count' do
			post users_path, user: {	name: "",
										email: "user@invalid",
										password: 				"foo",
										password_confirmation: 	"bar" }
		end
		assert_template 'users/new'
		assert_select 'div.error-explanation'
	end

	test "valid signup information" do
		get signup_path
		assert_difference 'User.count', 1 do
			post_via_redirect users_path, user: {
										name: "Sample User",
										email: "sample@user.com",
										passowrd: "micorazon",
										password_confirmation: "micorazon" }
		end
		assert_template 'users/show'
		assert_not flash.nil?
	end

end
