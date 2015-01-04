class CarsController < ApplicationController
	before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]

	def new
		@car = current_user.cars.new
	end

	def create
		@car = current_user.cars.build(car_params)
		if @car.save
			flash[:success] = "Car added!"
			redirect_to current_user
		else
			render 'new'
		end
	end

	def destroy
	end

	private

	def car_params
		params.require(:car).permit(:make, :note)
	end

end
