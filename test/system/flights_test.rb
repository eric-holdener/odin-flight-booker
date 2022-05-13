require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "should create flight" do
    visit flights_url
    click_on "New flight"

    fill_in "Arrival date", with: @flight.arrival_date
    fill_in "Arrival time", with: @flight.arrival_time
    fill_in "Departure date", with: @flight.departure_date
    fill_in "Departure time", with: @flight.departure_time
    fill_in "Flight capacity", with: @flight.flight_capacity
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "should update Flight" do
    visit flight_url(@flight)
    click_on "Edit this flight", match: :first

    fill_in "Arrival date", with: @flight.arrival_date
    fill_in "Arrival time", with: @flight.arrival_time
    fill_in "Departure date", with: @flight.departure_date
    fill_in "Departure time", with: @flight.departure_time
    fill_in "Flight capacity", with: @flight.flight_capacity
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Flight" do
    visit flight_url(@flight)
    click_on "Destroy this flight", match: :first

    assert_text "Flight was successfully destroyed"
  end
end
