class AddStateToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :state, :string
  end
end
