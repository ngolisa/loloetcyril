class AddUser2ToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :user2
    add_foreign_key :groups, :users, column: :user2_id, on_delete: :restrict
  end
end
