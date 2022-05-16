# README

This app is a small flight booker project with deliverables outlined here: https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker

A user will be able to choose where they are flying out of on what day, find all flights or that day, and book a flight somewhere else.

Flights will keep track of how many users have booked that flight in comparison to their capacity. (might add overbooking, since it's a legitimate thing airlines do)

Airports will keep track of what flights are supposed to come in and what flights are supposed to be leaving.

Users will have payment info linked to their account in a different database table, as well as address information in a different table.

Reflection:
- I was able to accomplish this project in pretty much a solid day worth of dedicated attempting. My biggest issue in the entire process was the nested forms when it came to booking multiple passengers. I had no issues figuring out how to pass the count of passengers needed to book to the controller and view, but the nested forms just weren't working. It took "cheating" a bit and looking at another students project to realize I had my database schema backwards, and passengers needed a booking id, a booking did not need a passenger id. Once I made that change, the form I had already created worked great and everything kind of fell into place.

TO-DO
- Add in logic to determine if a flight is fully booked by counting amount of bookings for the flight, and reject new bookings / don't show the flight if it's fully booked
- Style with CSS
- Add in upcoming / past flights section to index page
- Seed more flights and airports for a more functional example project