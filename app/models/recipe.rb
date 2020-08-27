class Recipe < ApplicationRecord
    has_many :steps, dependent: :destroy
    has_many :ingredients, dependent: :destroy

    accepts_nested_attributes_for :steps
    accepts_nested_attributes_for :ingredients
    validates :title, presence: true, length: { maximum: 255 }
end
  