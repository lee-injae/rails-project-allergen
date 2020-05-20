class RecipesController < ApplicationController

    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    def index
        # @recipes = Recipe.all
        @recipes = Recipe.left_joins(:ris).group(:recipe_id).order('COUNT(ingredient_id) DESC')

    end

    def show

    end

    def edit
    end

    def create
        @recipe = Recipe.create(recipe_params)
        redirect_to recipe_path(@recipe)
    end
    
    def new
        @recipe = Recipe.new
    end

    def update
        @recipe.update(recipe_params)
        redirect_to recipe_path(@recipe)
    end

    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :user_id, ingredient_ids: [])
    end
end
