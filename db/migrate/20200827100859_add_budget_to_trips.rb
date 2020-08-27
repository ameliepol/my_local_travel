class AddBudgetToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :budget, :integer
  end
end
