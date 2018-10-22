class AddPriceToDogWalking < ActiveRecord::Migration[5.2]
  def change
    add_column :dog_walkings, :price, :float
  end
end
