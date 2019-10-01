class AddUser3ToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :user3
    add_foreign_key :groups, :users, column: :user3_id, on_delete: :restrict
  end
end
