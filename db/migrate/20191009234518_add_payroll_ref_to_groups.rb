class AddPayrollRefToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :payroll, foreign_key: true
  end
end
