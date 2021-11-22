class RemoveReferenceCategory < ActiveRecord::Migration[6.0]
  def change
    remove_reference :toothbrushes, :category, index: true
  end
end
