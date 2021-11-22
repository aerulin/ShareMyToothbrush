class AddCategoryToToothbrushesAsString < ActiveRecord::Migration[6.0]
  def change
    add_column :toothbrushes, :category, :string
  end
end
