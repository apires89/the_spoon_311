class RestaurantsController < ApplicationController
    RESTAURANTS = {
    1 => { name: "Mcdonalds", address: "Madrid", category: "burgers" },
    2 => { name: "Gato", address: "Madrid", category: "vegan" }
  }
  def index
    @category = params[:food_type]
    @restaurants = RESTAURANTS.select {|id,restaurant| restaurant[:category] == @category}
  end

  def create
    render plain: "Add new restaurant to my DB"
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
