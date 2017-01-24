class CreateScenarios < ActiveRecord::Migration[5.0]
  def change
    create_table :scenarios do |t|
      t.string :name
      t.text :description
      t.text :member_requirements
      t.text :group_requirements

      t.timestamps
    end
  end
end
