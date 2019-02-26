class Guest
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    self.trips.map do |trip|
        trip.listing
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    self.listings.length
  end

  def self.pro_traveller
    Guest.all.select do |guest|
      guest.trip_count >= 2
    end
  end

  def self.find_all_by_name(name)
    name.trips
  end

end
