class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_restricted, :boolean, default: false
  end
end
