class CarsController < ApplicationController
	before_action :logged_in_user, 	only: [:new, :create]
	before_action :correct_user, 	only: [:edit, :update, :destroy]

	def new
		@car = current_user.cars.build if logged_in?
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
		@car.destroy
		flash[:success] = "Car deleted!"
		redirect_to request.referrer || root_url
	end

	private

	def car_params
		params.require(:car).permit(:model_id, :year, :mileage, :price, :picture, :note)
	end

	def correct_user
		@car = current_user.cars.find_by(id: params[:id])
		redirect_to root_url if @car.nil?
	end
end