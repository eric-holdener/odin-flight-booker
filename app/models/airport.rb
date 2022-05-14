class Airport < ApplicationRecord
  has_many :inbound_flights, class_name: "Flight", foreign_key: "inbound_airport_id"
  has_many :outbound_flights, class_name: "Flight", foreign_key: "outbound_airport_id"
end
