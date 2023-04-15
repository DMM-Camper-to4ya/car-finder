class Public::FavoritesController < ApplicationController

 def create
 car = Car.find(params[:car_id])
 favorite = current_customer.favorites.new(car_id: car.id)
 favorite.save
 redirect_to public_car_path(car)
 end

  def destroy
  car = Car.find(params[:car_id])
  favorite = current_customer.favorites.find_by(car_id: car.id)
  favorite.destroy
 redirect_to public_car_path(car)
  end
end
