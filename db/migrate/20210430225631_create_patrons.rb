class CreatePatrons < ActiveRecord::Migration[6.0]
  def change
    create_table :patrons do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
