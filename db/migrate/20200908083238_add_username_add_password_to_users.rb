class AddUsernameAddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pass, :string
    add_column :users, :username, :string
  end
end
