class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :member_type
      t.string :gender
      t.integer :group_id
      t.boolean :active, default: true
      t.string :work_phone
      t.string :cell_phone
      t.string :email
      t.string :photo
      t.text :special_needs

      t.timestamps
    end
  end
end
