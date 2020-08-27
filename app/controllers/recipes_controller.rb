class RecipesController < ActionController::Base
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
        @recommended_recipes = Recipe.all.sample(3)
    end
end
