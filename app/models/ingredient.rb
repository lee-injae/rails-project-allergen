class Ingredient < ApplicationRecord
    has_many :ris
    has_many :recipes, through: :ris
    has_many :allergies 
    has_many :users, through: :allergies
end
