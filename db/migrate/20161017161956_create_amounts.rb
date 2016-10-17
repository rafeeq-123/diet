class CreateAmounts < ActiveRecord::Migration[5.0]
  def change
    create_table :amounts do |t|
      t.integer :food_intake

      t.timestamps
    end
  end
end
