class AddKitToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :kit, :boolean
  end
end
