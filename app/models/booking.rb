class Booking < ApplicationRecord
  has_many :flights, class_name: "Flight"
  has_many :passengers, class_name: "Passenger"
  accepts_nested_attributes_for :passengers
end
