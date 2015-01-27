require 'test_helper'

class CarsControllerTest < ActionController::TestCase

	def setup
		@car = cars(:cube)
	end

	test "should redirect create when not logged in" do
		assert_no_difference 'Car.count' do
			post :create, car: { make: "1" }
		end
		assert_redirected_to signup_url
	end

	test "should redirect destroy when not logged in" do
		assert_no_difference 'Car.count' do
			delete :destroy, id: @car
		end
		assert_redirected_to signup_url
	end

	test "should redirect destroy for wrong car" do
		log_in_as(users(:test))
		car = cars(:robot)
		assert_no_difference 'Car.count' do
			delete :destroy, id: car
		end
		assert_redirected_to root_url
	end


end
