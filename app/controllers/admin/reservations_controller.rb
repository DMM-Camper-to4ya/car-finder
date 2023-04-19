class Admin::ReservationsController < ApplicationController

  def index
  @customer = Customer.all
  #@customer_reservations = Reservation.find(params[:id])
  end

  def destroy
  @reservation = Reservation.find(params[:id])
  if @reservation.destroy
    flash[:success] = "予約を削除しました。"
    redirect_to admin_reservations_path
  else
    render :index
  end
  end


private
  def reservation_params
    params.require(:reservation).permit(:day, :time, :customer_id, :start_time)
  end

end