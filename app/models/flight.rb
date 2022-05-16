class Flight < ApplicationRecord
  belongs_to :outbound_airport, class_name: "Airport", foreign_key: "outbound_airport_id"
  belongs_to :inbound_airport, class_name: "Airport", foreign_key: "inbound_airport_id"
  has_many :booked_passengers, class_name: "Booking", foreign_key: "flight_id"
end
