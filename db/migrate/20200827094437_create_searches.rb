class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.integer :mood
      t.integer :budget
      t.integer :days_number
      t.string :address
      t.date :start_date
      t.integer :radius

      t.timestamps
    end
  end
end
