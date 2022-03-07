class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.references :studio, null: false, foreign_key: true
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
