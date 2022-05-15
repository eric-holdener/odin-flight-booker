# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(city: "Dallas/Fort Worth", state: "Texas", name: "Dallis/Fort Worth International Airport", code: "DFW")
Airport.create(city: "Atlanta", state: "Georgia", name: "Hartsfield-Jackson International Airport", code: "ATL")
Airport.create(city: "Denver", state: "Colorado", name: "Denver International Airport", code: "DEN")
Airport.create(city: "Chicago", state: "Illinois", name: "O'Hare International airport", code: "ORD")
Airport.create(city: "Los Angeles", state: "California", name: "Los Angeles International Airport", code: "LAX")

Flight.create(departure_time: Time.now, departure_date: Time.now, arrival_time: Time.now.tomorrow, arrival_date: Time.now.tomorrow, inbound_airport_id: 1, outbound_airport_id: 2, flight_capacity: 10)
Flight.create(departure_time: Time.now, departure_date: Time.now, arrival_time: Time.now.tomorrow, arrival_date: Time.now.tomorrow, inbound_airport_id: 3, outbound_airport_id: 4, flight_capacity: 20)
Flight.create(departure_time: "22:00", departure_date: Time.now, arrival_time: "04:25", arrival_date: Time.now.tomorrow, inbound_airport_id: 5, outbound_airport_id: 2, flight_capacity: 30)
Flight.create(departure_time: "09:15", departure_date: Time.now, arrival_time: "13:10", arrival_date: Time.now.tomorrow, inbound_airport_id: 3, outbound_airport_id: 1, flight_capacity: 60)