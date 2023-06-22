class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @q = Car.ransack(params[:q])
    @cars = Car.all
  end

  def dashboard
    @requests = Booking.joins(:car).where(cars: { user: current_user })
    @cars = current_user.cars
    @bookings = current_user.bookings
  end
end
