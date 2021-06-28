class AddOrderItemsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :order_items, :jsonb
  end
end
