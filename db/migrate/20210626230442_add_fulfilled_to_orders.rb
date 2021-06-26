class AddFulfilledToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :fulfilled, :boolean
  end
end
