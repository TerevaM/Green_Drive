class CarsController < ApplicationController
<<<<<<< HEAD
  before_action :set_cars, only: %I[edit update destroy]

  def edit; end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def set_cars
    @cars = Cars.find(params[:id])
  end

  def cars_params
    params.require(:cars).permit(:model, :user, :availability, :brand, :description, :image_url)
=======
  def index
    @cars = Car.all
  end

  def show
  end

  def new
  end

  def update
>>>>>>> 6516a75fe16cb2a315b8da5b13f3933a7ac2487d
  end
end
