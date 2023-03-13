class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.pet = @pet
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
