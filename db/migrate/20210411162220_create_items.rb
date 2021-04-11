class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.text :desc

      t.timestamps
    end
  end
end
