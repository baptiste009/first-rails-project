class AddPriceProducts < ActiveRecord::Migration
  def change
  	add_column :products, :price, :decimal
  end
end