class Passenger

  attr_accessor :name
  attr_reader :hometown
  @@all = []

  def initialize(name, hometown)
    @name = name 
    @hometown = hometown

  @@all << self
  end

  def self.all
    @@all
  end

  def flights
    Flight.all.select {|flight| flight.passenger == self}
  end

  def flight_to_airport(airport, date)
    Flight.new(date: date, airport: airport, passenger: self)
  end

  def all_cities_visited
    cities = flights.map {|flight| flight.airport.city}
    cities.each {|city| puts "#{city}"}
  end

end