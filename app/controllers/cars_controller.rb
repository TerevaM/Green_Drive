class CarsController < ApplicationController
  before_action :set_car, only: %I[show edit update destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @q = Car.ransack(params[:q])
    @cars = @q.result(distinct: true)
    if params[:q].present?
      start_date = params[:q][:start_date_gteq]
      end_date = params[:q][:end_date_lteq]
      if start_date.present? && end_date.present?
        @cars = @cars.joins(:bookings).where.not(bookings: { start_date: (start_date..end_date), end_date: (start_date..end_date) })
      end
    end
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
    if @car.save!
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
    @car.update(car_params)
    if @car.save!
      redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to dashboard_path, status: :see_other, notice: "Votre voiture a bien été supprimée"
    authorize @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :start_date, :end_date, :brand,
                                :description, :location, :number_of_seats, :year,
                                :rate, :color, photos: [])
  end
end
