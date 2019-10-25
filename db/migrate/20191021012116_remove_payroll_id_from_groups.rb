class RemovePayrollIdFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_index :groups, :payroll_id
    remove_column :groups, :payroll_id, :integer
  end
end
