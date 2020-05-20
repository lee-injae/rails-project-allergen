class Allergy < ApplicationRecord
    belongs_to :ingredient, dependent: :destroy
    belongs_to :user, dependent: :destroy
end
