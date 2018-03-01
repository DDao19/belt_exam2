class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :product
      t.datetime :date
      t.integer :amount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
