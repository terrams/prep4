class AddTeaserToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :teaser, :text
  end
end
