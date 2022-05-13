json.extract! flight, :id, :departure_time, :departure_date, :arrival_time, :arrival_date, :flight_capacity, :created_at, :updated_at
json.url flight_url(flight, format: :json)
