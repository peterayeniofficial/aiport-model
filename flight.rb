class Flight

  attr_accessor :date
  attr_reader :passenger, :airport

  @@all = []

  def initialize(passenger:, airport:, date:)
    @airport = airport
    @passenger = passenger 
    @date = date

  @@all << self
  end

  def self.all
    @@all
  end

  def flying_home?
    if self.passenger.hometown == self.airport.city
      true
    else
      false
    end
  end

end