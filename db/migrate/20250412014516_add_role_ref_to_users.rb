class AddRoleRefToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :role
  end
end
