class AddWorkdateToPayrolls < ActiveRecord::Migration[5.2]
  def change
    add_column :payrolls, :workdate, :date
  end
end
