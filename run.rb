require "pry"

require_relative "flight.rb"
require_relative "airport.rb"
require_relative "passenger.rb"

p1 = Passenger.new("Peter", "London")
p2 = Passenger.new("James", "Accra")

a1 = Airport.new("LDA", "Accra")
a2 = Airport.new("MDC", "Oslo")

p1.flight_to_airport(a1, "02102019")
p1.flight_to_airport(a2, "03102019")
p2.flight_to_airport(a1, "02102019")
p2.flight_to_airport(a2, "07102019")
p2.flight_to_airport(a2, "31102019")

a1.most_frequent_passenger
a1.passengers
a1.flights
a1.flight_on("123222")

p1.all_cities_visited
p1.flights
a1.flight_on("123222")

binding
0
