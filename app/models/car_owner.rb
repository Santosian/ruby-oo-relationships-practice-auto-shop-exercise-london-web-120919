class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

# Get a list of all the cars that a specific owner has
  def cars
    Car.all.select{|car| car.car_owner == self}
  end
# Get a list of all the mechanics that a specific owner goes to
  def mechanics
   cars.map{|car| car.mechanic}
  end

# Get the average amount of cars owned for all owners
  def average_all_owners     
    Car.all.count / CarOwner.all.length
  end

end
