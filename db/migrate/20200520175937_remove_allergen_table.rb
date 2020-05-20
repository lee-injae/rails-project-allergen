class RemoveAllergenTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :allergens
  end
end
