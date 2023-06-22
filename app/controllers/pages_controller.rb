class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @q = Car.ransack(params[:q])
    @cars = Car.all
  end

  def dashboard
    @bookings = current_user.bookings
    @cars = current_user.cars
  end
end
