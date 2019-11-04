class RemoveWorkDayFromPayroll < ActiveRecord::Migration[5.2]
  def change
    remove_column :payrolls, :workDay, :date
  end
end
