class Location

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end

class Trip

@@options

  def initialize(options=[])
    @@options = options
  end

  def add_location(name)
    @name = name
    new_location = Location.new(name)
    @@options << new_location
    return new_location
  end

  def name
    @name
  end

  def self.random_destination
    return @@options.sample.name
  end


  def self.itinerary
    puts "Began trip"
    @@options.each_cons(2) do |from, to|
      puts "Travelled from #{from.name} to #{to.name}."
    end
    puts "Ended trip"
  end

end
# toronto = Location.new("Toronto")
# puts toronto.name

new_trip = Trip.new

toronto = new_trip.add_location("Toronto")
montreal = new_trip.add_location("Montreal")
halifax = new_trip.add_location("Halifax")
vancouver = new_trip.add_location("Vancouver")
ottawa = new_trip.add_location("Ottawa")
puts Trip.itinerary
