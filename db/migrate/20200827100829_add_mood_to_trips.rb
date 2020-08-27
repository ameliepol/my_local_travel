class AddMoodToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :mood, :integer
  end
end
