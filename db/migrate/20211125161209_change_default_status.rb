class ChangeDefaultStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :status, :string, default: '⏳ pending'
  end
end
