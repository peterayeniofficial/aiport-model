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

  def airport_visited
    flights.map{|flight| flight.airport}
  end

  def most_visited_aiport
    most = airport_visited.max_by{|n| airport_visited.count(n)}
    most.name
  end

  def all_cities_visited
    airport_visited.map{|airport| airport.city}
  end

end