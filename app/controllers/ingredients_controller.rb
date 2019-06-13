class IngredientsController < ApplicationController
before_action :find_ingredient, only: [:show, :edit, :update, :destroy]

def index
    @ingredients = Ingredient.all
end

def show
end

def new
    @ingredient = Ingredient.new
end

def create
    @ingredient = Ingredient.new(
        ingredient_params(:name)
    )
    if @ingredient.valid?
        @ingredient.save
        redirect_to @ingredient
    else
        render :new
    end
end

def edit
end

def update
    if @ingredient.valid?
        @ingredient.update(
            ingredient_params(:name)
        )
        redirect_to @ingredient
    else
        render :edit
    end
end

def destroy
    @ingredient.destroy
    redirect_to ingredients_path
end

private

    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params(*args)
        params.require(:ingredient).permit(*args)
    end

end
