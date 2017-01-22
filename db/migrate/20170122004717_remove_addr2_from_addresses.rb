class RemoveAddr2FromAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :addr2, :string
  end
end
