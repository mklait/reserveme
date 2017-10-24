class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :Name
      t.datetime :Reservation_Date_Time
      t.integer :Guests
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
