class Ingredient < ApplicationRecord
    has_many :ris
    has_many :recipes, through: :ris
    has_many :allergens 
    has_many :users, through: :allergens
end
