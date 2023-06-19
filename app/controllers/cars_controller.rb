class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
  end

  def new
  end

  def update
  end
end
