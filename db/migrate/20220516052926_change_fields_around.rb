class ChangeFieldsAround < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :booking_id, :integer
    remove_column :bookings, :passenger_id
    remove_column :bookings, :booked_passengers
  end
end
