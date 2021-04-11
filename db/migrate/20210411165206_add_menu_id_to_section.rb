class AddMenuIdToSection < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :menu_id, :integer
  end
end
