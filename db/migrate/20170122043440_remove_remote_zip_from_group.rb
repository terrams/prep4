class RemoveRemoteZipFromGroup < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :remote_zip, :string
  end
end
