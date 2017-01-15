class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :password
      t.string :base_phone
      t.string :base_zip
      t.string :photo  
      t.string :icon    
      t.string :local_meetup
      t.string :local_zip
      t.string :remote_meetup
      t.string :remote_zip
      t.string :crisis_contact_first_name
      t.string :crisis_contact_last_name
      t.string :cc_home_phone
      t.string :cc_cell_phone
      t.string :cc_email
      t.string :cc_zip

      t.timestamps
    end
  end
end
