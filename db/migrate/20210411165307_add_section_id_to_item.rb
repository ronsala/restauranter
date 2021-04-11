class AddSectionIdToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :section_id, :integer
  end
end
