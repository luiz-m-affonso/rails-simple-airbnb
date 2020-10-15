class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit; end

  def update
    @flat = Flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def set_flats
    @flat = Flat.find(params[:id])
  end
end

# class RestaurantsController < ApplicationController
#   before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

#   def index
#     @restaurants = Restaurant.all
#   end

#   def show; end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     if @restaurant.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   def edit; end

#   def update
#     @restaurant = Restaurant.update(restaurant_params)
#     redirect_to restaurant_path(@restaurant)
#   end

#   def destroy
#     @restaurant.destroy
#     redirect_to restaurants_path
#   end

#   private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :phone_number, :category)
#   end

#   def set_restaurant
#     @restaurant = Restaurant.find(params[:id])
#   end
# end
