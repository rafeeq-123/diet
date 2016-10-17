class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :dish
      t.string :food_groups

      t.timestamps
    end
  end
end
