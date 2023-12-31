class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
