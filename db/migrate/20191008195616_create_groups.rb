class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.date :date
      t.string :team
      t.boolean :inGym
      t.boolean :offSite
      t.integer :mileage

      t.timestamps
    end
  end
end
