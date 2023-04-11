class Admin::CarsController < ApplicationController

 def new
 @car = Car.new
 end

 def create
 @car = Car.new(car_params)
 if @car.save
 redirect_to admin_car_path(@car.id)
 else
 render :new
 end
 end

 def index
 @cars=Car.all
 end

 def show
 @car = Car.find(params[:id])
 end

 def edit
 @car = Car.find(params[:id])
 end

 def update
 car = Car.find(params[:id])
 car.update(car_params)
 redirect_to admin_car_path(car.id)
 end

 def destroy
 car = Car.find(params[:id])
 car.destroy
 redirect_to  admin_cars_path
 end

 private

 def car_params
   params.require(:car).permit(:car_model, :years, :body_price, :total_price, :image)
 end
end

