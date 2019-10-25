class AddRecordIdToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :record_id, :integer
    add_index :groups, :record_id
  end
end
