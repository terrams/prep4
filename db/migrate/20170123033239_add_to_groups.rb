class AddToGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :base_addr1, :string
    add_column :groups, :base_city, :string
    add_column :groups, :base_state, :string
    add_column :groups, :base_zip, :string
    add_column :groups, :base_name, :string

    add_column :groups, :local_addr1, :string
    add_column :groups, :local_city, :string
    add_column :groups, :local_state, :string
    add_column :groups, :local_zip, :string
    add_column :groups, :local_name, :string

    add_column :groups, :remote_addr1, :string
    add_column :groups, :remote_city, :string
    add_column :groups, :remote_state, :string
    add_column :groups, :remote_zip, :string
    add_column :groups, :remote_name, :string
  end
end
