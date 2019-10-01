class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :groups, foreign_key: true
      t.string :type_of_the_room
      t.boolean :paid, default: :false
      t.timestamps
    end
  end
end
