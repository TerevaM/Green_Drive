class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def dashboard
    @bookings = current_user.bookings
    @cars = current_user.cars
  end
end
