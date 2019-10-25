class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :workdate
      t.integer :payroll_id
      t.decimal :totalHours

      t.timestamps
    end
  end
end
