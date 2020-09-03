class AddPendingToSelectedActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :selected_activities, :pending, :boolean
  end
end
