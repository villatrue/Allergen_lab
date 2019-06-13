class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  def show
    @Ingredient = Ingredient.find(param[:id])
  end
  def new

  end
end
