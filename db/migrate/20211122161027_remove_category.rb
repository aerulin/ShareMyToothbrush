class RemoveCategory < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :toothbrushes, :categories
  end
end
