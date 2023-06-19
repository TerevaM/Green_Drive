class CarsController < ApplicationController
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
  end
end
