class AddFoodIdToAmounts < ActiveRecord::Migration[5.0]
  def change
    add_column :amounts, :food_id, :integer
  end
end
