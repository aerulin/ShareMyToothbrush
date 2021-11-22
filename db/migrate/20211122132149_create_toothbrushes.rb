class CreateToothbrushes < ActiveRecord::Migration[6.0]
  def change
    create_table :toothbrushes do |t|
      t.string :title
      t.string :condition
      t.text :description
      t.integer :price
      t.string :brand
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
