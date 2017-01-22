class RemoveBaseZipFromGroup < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :base_zip, :string
  end
end
