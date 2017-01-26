class RemoveGroupRequirementsFromScenarios2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :scenarios, :group_requirements, :text
  end
end
