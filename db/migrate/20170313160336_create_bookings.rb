class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.references :hamac, foreign_key: true

      t.timestamps
    end
  end
end
