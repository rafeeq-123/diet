class AddFoodInTakeToAmountsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :amounts, :food_intake, :string
  end
end
