require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

	test "login with invalid invalid information" do 
		get login_path
		assert_template 'users/new'
		post login_path, session: { email: "", password: "" }
		assert_template 'users/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?
	end

end
