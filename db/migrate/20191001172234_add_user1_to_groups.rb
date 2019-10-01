class AddUser1ToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :user1
    add_foreign_key :groups, :users, column: :user1_id, on_delete: :restrict
  end
end
