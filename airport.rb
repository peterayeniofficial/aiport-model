class Airport
  attr_accessor :name
  attr_reader :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def flights
    Flight.all.select {|flight| flight.airport == self}
  end

  def passengers
    flights.map {|flight| flight.passenger}
  end

  def flight_on(date)
    find_date = flights.find{|flight| flight.date == date}
    if find_date
      find_date
    else 
      nil
    end
  end

  def most_frequent_passenger
    most = passengers.max_by{|n| passengers.count(n)}
    most.name
  end
end