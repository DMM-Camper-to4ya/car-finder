class Public::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all.where("date >= ?", Date.current).where("date < ?", Date.current >> 3).order(date: :desc)
  end
end
