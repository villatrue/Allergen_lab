class RecipesController < ApplicationController
    def index
      @recipes = Recipe.all
    end
    def show
      @recipe = Recipe.find(param[:id])
    end
    def new
      @recipe = Recipe.new
    end

    def create
      @recipe = Recipe.find(param[:id])
      @recipe.create(recipe_params)
      redirect_to recipe_path
    end

    private

    def recipe_params
      params.require(:recipe).permit(:name, :user_id)
    end
end
