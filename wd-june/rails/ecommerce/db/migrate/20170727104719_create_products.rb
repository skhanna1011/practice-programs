class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.integer :category_id
      t.boolean :available
      t.timestamps
    end
  end
end
