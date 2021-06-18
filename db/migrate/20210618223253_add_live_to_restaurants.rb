class AddLiveToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :live, :boolean
  end
end
