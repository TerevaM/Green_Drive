class CarsController < ApplicationController
  before_action :set_car, only: %I[show update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @cars = Car.all
  end

  def show
    authorize @car
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car
    if @car.save
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @car
  end

  def update
    authorize @car
  end

  def destroy
    authorize @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :availability, :brand, :description, :image_url)
  end
end
