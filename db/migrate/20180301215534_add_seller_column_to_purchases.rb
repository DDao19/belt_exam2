class AddSellerColumnToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :seller, :integer
  end
end
