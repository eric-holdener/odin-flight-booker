class CreateFlightAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :flight_airports do |t|
      t.integer :flight_id
      t.integer :outbound_airport_id
      t.integer :inbound_airport_id
      t.timestamps
    end
  end
end
