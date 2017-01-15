class RemovePasswordFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :password, :string
  end
end
