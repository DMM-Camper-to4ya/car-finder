class Public::CarsController < ApplicationController
 before_action :set_q, only: [:index, :search]

 def index
 @cars=Car.page(params[:page])
 end

 def search
 @results = @q.result
 end

 def show
 @car = Car.find(params[:id])
 end

 private

 def car_params
   params.require(:car).permit(:car_model, :years, :body_price, :total_price, :image)
 end

 def set_q
   @q = Car.ransack(params[:q])
 end
end
