class CreatePayrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :payrolls do |t|
      t.date :payPeriod
      t.decimal :total

      t.timestamps
    end
  end
end
