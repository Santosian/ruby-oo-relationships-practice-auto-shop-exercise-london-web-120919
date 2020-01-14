require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Mike")
co2 = CarOwner.new("Fred")

m1 = Mechanic.new("Johnson", "sport")
m2 = Mechanic.new("Santiago", "antique")
m3 = Mechanic.new("Robert", "Clunker")

car1 = Car.new("Audi", "A1", "sport", co1, m1)
car2 = Car.new("Peugot", "206", "Clunker", co2, m3)
car3 = Car.new("Alpha Romeo", "Giulia", "Clunker", co1, m3)



binding.pry
