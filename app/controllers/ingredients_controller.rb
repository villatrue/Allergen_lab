class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  def show
    @ingredient = Ingredient.find(param[:id])
  end
  def new
    @ingredient = Ingredient.new
  end
  def create
    @ingredient = Ingredient.find(param[:id])
    @ingredient.create(ingredient_params)
    redirect_to ingredient_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
