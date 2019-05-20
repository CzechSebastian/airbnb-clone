class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :description
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
