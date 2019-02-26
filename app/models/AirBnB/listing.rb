class Listing
  attr_reader :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    self.guests.length
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      binding.pry
      listing == city
      end
    end

    def Listing.most_popular
      tally = {}
      Trip.all.each do |trip|
        if tally[trip.listing] == nil
          tally[trip.listing] = 1
        else
          tally[trip.listing] += 1
        end
      end
        sorted_tally = tally.sort_by{|k, v| v}.reverse
        return sorted_tally[0][0]
    end

end
