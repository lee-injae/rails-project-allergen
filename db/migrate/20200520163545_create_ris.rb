class CreateRis < ActiveRecord::Migration[6.0]
  def change
    create_table :ris do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
