class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :category
      t.text :description
      t.string :owner
      t.integer :quantity_required
      t.string :unit_of_measure
      t.string :icon
      t.string :image

      t.timestamps
    end
  end
end
