class DropTableFlightAirports < ActiveRecord::Migration[7.0]
  def change
    drop_table :flight_airports
    add_column :flights, :inbound_airport_id, :integer
    add_column :flights, :outbound_airport_id, :integer
  end
end
