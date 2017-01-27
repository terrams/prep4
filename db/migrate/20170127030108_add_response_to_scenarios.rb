class AddResponseToScenarios < ActiveRecord::Migration[5.0]
  def change
    add_column :scenarios, :response, :text
    add_column :scenarios, :supplies, :text
    add_column :scenarios, :likelyhood, :text
    add_column :scenarios, :threat, :text    
  end
end
