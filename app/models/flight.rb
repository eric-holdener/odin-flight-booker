class Flight < ApplicationRecord
  belongs_to :outbound_airport, class_name: "Airport", foreign_key: "outbound_airport_id"
  belongs_to :inbound_airport, class_name: "Airport", foreign_key: "inbound_airport_id"
end
