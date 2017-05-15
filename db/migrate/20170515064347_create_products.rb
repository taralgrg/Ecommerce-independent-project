class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end