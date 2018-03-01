class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.references :shoe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
