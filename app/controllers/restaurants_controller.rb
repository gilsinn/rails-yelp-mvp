class RestaurantsController < ApplicationController

# GET "restaurants"
def index
  @restaurants = Restaurant.all
end

def show
  @restaurant = Restaurant.find(params[:id])
end

# GET "restaurants/new"
# POST "restaurants"

def new
  @restaurant = Restaurant.new
end

def create
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
    redirect_to restaurant_path(@restaurant)
  else
    render :new
  end
end


# GET "restaurants/38"




private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end




end
