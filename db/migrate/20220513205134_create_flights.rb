class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.time :departure_time
      t.date :departure_date
      t.time :arrival_time
      t.date :arrival_date
      t.integer :inbound_airport_id
      t.integer :outbound_airport_id
      t.integer :flight_capacity

      t.timestamps
    end
  end
end
