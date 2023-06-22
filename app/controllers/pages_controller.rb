class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cars = Car.all
  end

  def dashboard
    @cars = current_user.cars
    @mybookings = current_user.bookings
  end
end

# Je veux tout les bookings dans lesquelles l'owner de la voiture de ces bookings est le current user
