class RecipesController < ActionController::Base
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
        @recommended_recipes = recommend_recipes_for(@recipe)
    end

    private
        def recommend_recipes_for(recipe)        
            lack_nutrition_types = [0, 1, 2, 3, 4, 5] - recipe.nutrition
            Recipe.find_by_lack_nutrition(lack_nutrition_types)
        end
end
