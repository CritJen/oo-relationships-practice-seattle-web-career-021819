require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

steve = Guest.new("Steve")
jen = Guest.new("Jen")
drew = Guest.new("Drew")
erika = Guest.new("Erika")

seattle = Listing.new("Seattle")
portland = Listing.new("Portland")
baltimore = Listing.new("Baltimore")
dc = Listing.new("DC")

t1 = Trip.new(steve, portland)
t2 = Trip.new(jen, portland)
t3 = Trip.new(jen, baltimore)
t4 = Trip.new(erika, dc)
t5 = Trip.new(drew, seattle)
t6 = Trip.new(steve, dc)








Pry.start
