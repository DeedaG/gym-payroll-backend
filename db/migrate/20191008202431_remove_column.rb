class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :date, :date
  end
end
