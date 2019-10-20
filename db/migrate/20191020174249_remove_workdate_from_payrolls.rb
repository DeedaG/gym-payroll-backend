class RemoveWorkdateFromPayrolls < ActiveRecord::Migration[5.2]
  def change
    remove_column :payrolls, :workdate, :date
  end
end
