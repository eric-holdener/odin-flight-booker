class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id: params[:booking][:id])
    @flight = Flight.find(params[:booking][:id])
    @passengers_count = params[:booking][:passengers].to_i
    @passengers_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:notice] = "Booking successfully completed!"
      redirect_to booking_path(@booking)
    else
      flash[:alert] = "An error occured!"
      render "new"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
