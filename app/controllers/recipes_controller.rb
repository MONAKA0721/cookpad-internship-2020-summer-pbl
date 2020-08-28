class RecipesController < ActionController::Base

    def home
    end

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

    def search
        recipe = Recipe.search(params[:name])
        @okazu = params[:name]
        if recipe.present?
            @comment = "こんなメニューがコンロを使わずもう一品作れるよ！"
            gon.main_nutritions = types_to_values(recipe.nutrition.to_set)
            @recommended_recipes = recommend_recipes_for(recipe)
            @recommended_recipes = @recommended_recipes.sort_by{|x| (types_to_values(recipe.nutrition.to_set + x.nutrition.to_set)).sum}.reverse.take(20)
            gon.nutritions = 
                @recommended_recipes.map do |recommended_recipe|
                    types_to_values(recipe.nutrition.to_set + recommended_recipe.nutrition.to_set)
                end
        else
            @comment = "主菜が見つけられませんでした、、、こんなメニューがコンロを使わず作れます"
            @recommended_recipes = Recipe.all.take(20)
            gon.nutritions = []
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
