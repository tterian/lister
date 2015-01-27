require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
	include ApplicationHelper

	def setup
		@user = users(:test)
	end

	test "profile display" do
		get user_path(@user)
		assert_template 'users/show'
		assert_match @user.cars.count.to_s, response.body
	end





end
