class RemoveRateFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rate, :decimal
  end
end
