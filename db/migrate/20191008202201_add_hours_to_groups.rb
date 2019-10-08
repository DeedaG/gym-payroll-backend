class AddHoursToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :hours, :decimal
  end
end
