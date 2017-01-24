class AddTagToScenarios < ActiveRecord::Migration[5.0]
  def change
    add_column :scenarios, :tag, :string
  end
end
