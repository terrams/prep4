class RemoveLocalZipFromGroup < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :local_zip, :string
  end
end
