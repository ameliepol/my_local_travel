class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :fee
      t.string :localisation
      t.integer :mood
      t.integer :category
      t.integer :budget
      t.string :photo_url

      t.timestamps
    end
  end
end
