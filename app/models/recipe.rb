class Recipe < ApplicationRecord
    has_many :steps, dependent: :destroy
    has_many :ingredients, dependent: :destroy

    accepts_nested_attributes_for :steps
    accepts_nested_attributes_for :ingredients
    validates :title, presence: true, length: { maximum: 255 }

    def nutrition
        nutrition_types = ingredients.map do |ingredient|
            ingredient.nutrition[0]
        end
    end

    def self.find_by_lack_nutrition(lack_nutrition_types)
        find_by_nutrition_types(lack_nutrition_types)
    end

    def self.find_by_nutrition_types(nutrition_types)
        recipes = []
        Recipe.where('kind = 1 or kind = 2').find_each do |recipe|
            # TODO ロジック検討の余地あり
            # 栄養素の包含関係
            if (nutrition_types.to_set - recipe.nutrition.to_set).size <= 1
            # if recipe.nutrition.to_set.subset?(nutrition_types.to_set)
                recipes << recipe
            end
        end
        recipes
    end

    def self.search(name)
        recipe = Recipe.where('title LIKE ?', "%#{name}%").first
    end
end
  