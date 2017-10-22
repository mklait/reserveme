class RestaurantsController < ApplicationController
	def index
		@restaurant = Restaurant.all
	end 

	def show
		@restaurant = Restaurant.find(params[:id])
	end 

	def new
		@restaurant = Restaurant.new
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end 

	def create
		@restaurant = Restaurant.new(restaurant_params)

		if @restaurant.save
	    	redirect_to @restaurant
	  else
	  	  render 'new'
	end
end

def update
	@restaurant = Restaurant.find(params[:id])

	if @restaurant.update(restaurant_params)
		redirect_to @restaurant
	else
		render 'edit'
	end 
end 

def destroy
	@restaurant.destroy
	respond_to do |format|
		format.html { redirect_to restaurants_url, notice: 'Restaurant was sucessfully Destroyed'}
		format.json { head :no_content}

	redirect_to restaurants_path
end
end

private
	def restaurant_params
		params.require(:restaurant).permit(:name, :cuisine, :address)
  end

end 