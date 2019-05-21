class BookingsController < ApplicationController

 def create
   @booking = Booking.new(booking_params)
   @booking.user = current_user
   @booking.location = Location.find(params[:location_id])
   @booking.status = "pending"
   authorize @booking

     if @booking.save!
       redirect_to dashboard_path
     else
       render 'new'
    end
  end

  private

 def booking_params
    params.require(:booking).permit(:date_in, :date_out)
 end

end
