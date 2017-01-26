class AddTeaserToScenarios < ActiveRecord::Migration[5.0]
  def change
    add_column :scenarios, :teaser, :string
  end
end
