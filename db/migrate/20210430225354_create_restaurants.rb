class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.text :desc

      t.timestamps
    end
  end
end
