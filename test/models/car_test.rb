require 'test_helper'

class CarTest < ActiveSupport::TestCase
	def setup
		@user = users(:test)
		@car = @user.cars.build(make: "1")
	end

	test "should be valid" do
		assert @car.valid?
	end

	test "user id should be present" do
		@car.user_id = nil
		assert_not @car.valid?
	end

	test "make should be present" do
		@car.make = ""
		assert_not @car.valid?
	end

	test "order should be most recent first" do
		assert_equal Car.first, cars(:most_recent)
	end

end
