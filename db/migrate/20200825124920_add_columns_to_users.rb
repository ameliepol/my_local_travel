class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :photo_url, :string
    add_column :users, :description, :text
  end
end
