class AddColumnsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :sport, :string
  end
end
