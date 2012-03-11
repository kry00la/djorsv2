class AddPriceToFunctionRoom < ActiveRecord::Migration
  def change
    add_column :function_rooms, :price, :decimal

  end
end
