class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy accept]
  before_action :set_car, only: [:new, :create, :show, :update]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    authorize @booking
    if @booking.save!
      redirect_to dashboard_path, notice: "Votre demande de réservation a été envoyée à #{@car.user.first_name}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path, notice: "La réservation a bien été annulée"
  end

  def accept
    @booking.status = "Confirmée"
    if @booking.save!
      redirect_to dashboard_path, notice: "Votre réservation a bien été validée."
    end
    authorize @booking
  end

  def status
    @booking.status = params[:format]
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message, :status)
  end
end
