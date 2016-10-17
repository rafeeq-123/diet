class DropAmountColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :amounts, :food_intake
  end
end
