class ReservationsController < ApplicationController

def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = Reservation.new
end

def create
	@reservation = Reservation.new(reservations_params)
	restaurant = Restaurant.find(params[:restaurant_id])
	@reservation.restaurant = restaurant

respond_to do |format|
if @reservation.save
			format.html { redirect_to restaurant, notice: 'Your reservation was successful. '}
else

		format.html {render :new}

	   end 

   end 

end 

private
def reservations_params
		params.require(:reservation).permit(:Name, :Reservation_Date_Time, :Guests)
	end 
end