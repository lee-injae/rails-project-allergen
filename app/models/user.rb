class User < ApplicationRecord
    has_many :recipes
    has_many :allergies
    has_many :ingredients, through: :allergies
    validates :name, presence: true, uniqueness: {case_sensitive: false} 
end
