class AmountsController < ApplicationController
 def create
    @food = Food.find(params[:food_id])
    @amount = @food.amounts.create(params[:amount].permit(:food_intake))
    redirect_to food_path(@food)
  end
end
