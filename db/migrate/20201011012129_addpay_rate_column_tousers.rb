class AddpayRateColumnTousers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :payRate, :decimal
  end
end
