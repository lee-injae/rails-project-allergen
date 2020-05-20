class Recipe < ApplicationRecord
    belongs_to :user
    has_many :ris 
    has_many :ingredients, through: :ris
end
