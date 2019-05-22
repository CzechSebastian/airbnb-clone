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

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to dashboard_path
  end

  private

 def booking_params
    params.require(:booking).permit(:date_in, :date_out, :status)
 end

end
