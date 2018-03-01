class AddBuyerColumnToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :buyer, :integer
  end
end
