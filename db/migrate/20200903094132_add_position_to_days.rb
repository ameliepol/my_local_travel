class AddPositionToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :position, :integer
  end
end
