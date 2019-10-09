class AddUserIdToPayrolls < ActiveRecord::Migration[5.2]
  def change
    add_column :payrolls, :user_id, :integer
  end
end
