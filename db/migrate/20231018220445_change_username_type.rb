class ChangeUsernameType < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :username, :string
  end
end