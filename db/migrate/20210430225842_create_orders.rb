class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.integer :restaurant_id
      t.integer :patron_id

      t.timestamps
    end
  end
end
