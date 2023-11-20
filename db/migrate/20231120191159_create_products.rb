class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :category
      t.string :brand
      t.string :condition
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
