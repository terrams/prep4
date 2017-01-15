class CreateGroupResources < ActiveRecord::Migration[5.0]
  def change
    create_table :group_resources do |t|
      t.integer :group_id
      t.integer :resource_id
      t.integer :quantity

      t.timestamps
    end
  end
end
