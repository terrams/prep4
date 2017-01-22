class AddLocationNameToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :location_name, :string
  end
end
