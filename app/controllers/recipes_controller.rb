class RecipesController < ActionController::Base
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
        @recommended_recipes = recommend_recipes_for(@recipe)
        gon.nutritions = 
            @recommended_recipes.map do |recipe|
                types_to_values(@recipe.nutrition.to_set + recipe.nutrition.to_set)
            end
    end

    private
        def recommend_recipes_for(recipe)        
            lack_nutrition_types = [0, 1, 2, 3, 4, 5] - recipe.nutrition
            recipes = Recipe.find_by_lack_nutrition(lack_nutrition_types)
        end

        def types_to_values(types)
            values = [0, 0, 0, 0, 0, 0]
            types.to_a.each do |type|
                values[type] = 5
            end
            values
        end
end
