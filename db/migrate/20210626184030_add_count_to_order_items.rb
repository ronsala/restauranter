class AddCountToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_column :order_items, :count, :integer
  end
end
