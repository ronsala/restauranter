class ChangeFulfilledDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :fulfilled, false
  end
end
