class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @booking = Booking.find(params[:booking_id])
    @flight = Flight.find(params[:flight_id])
    @url = booking_url(@booking)
    mail(to: @booking.passengers.pluck(:email), subject: 'Your booking has been confirmed')
  end
end
