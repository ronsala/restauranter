class RemovePatronId < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :patron_id
  end
end
