class CreateSelectedActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :selected_activities do |t|
      t.references :day, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
