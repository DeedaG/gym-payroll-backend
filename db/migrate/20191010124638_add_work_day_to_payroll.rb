class AddWorkDayToPayroll < ActiveRecord::Migration[5.2]
  def change
    add_column :payrolls, :workDay, :date
  end
end
