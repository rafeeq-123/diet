class FoodsController < ApplicationController
  before_action :find_food_id, only: [:show, :edit]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def show
  end

  def edit
  end

  def create
    @food = Food.new(food_params)
    if @food.save
       redirect_to @food
    else
      render 'new'
    end
  end

  def update
    find_food_id
    @food.update(food_params)
    if @food.save
       redirect_to @food
    else
      render 'edit'
    end
  end

  def destroy
    find_food_id
    @food.destroy
    redirect_to root_path
  end

  private

  def find_food_id
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:dish, :food_groups)
  end

end
