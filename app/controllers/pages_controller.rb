class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cars = Car.all
  end

  def dashboard
    @car = Car.find(params[:id])
    authorize @car
    @bookings = current_user.bookings
    @cars = current_user.cars
  end
end