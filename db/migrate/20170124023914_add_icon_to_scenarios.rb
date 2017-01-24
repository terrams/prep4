class AddIconToScenarios < ActiveRecord::Migration[5.0]
  def change
    add_column :scenarios, :icon, :string
  end
end
