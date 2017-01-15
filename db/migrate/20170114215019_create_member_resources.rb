class CreateMemberResources < ActiveRecord::Migration[5.0]
  def change
    create_table :member_resources do |t|
      t.integer :member_id
      t.integer :resource_id
      t.integer :quantity

      t.timestamps
    end
  end
end
