class AddPictoUrlToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :picto_url, :string
  end
end
