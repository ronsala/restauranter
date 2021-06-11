class RenamePatronsToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :patrons, :users
  end
end
