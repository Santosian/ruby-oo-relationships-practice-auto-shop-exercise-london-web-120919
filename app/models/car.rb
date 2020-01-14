class Car

  attr_accessor :brand, :model, :car_owner, :mechanic, :classification
  @@all = []

  def initialize(brand, model, classification, car_owner, mechanic)
    @brand = brand
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  # Get a list of all car classifications
  def self.classification_all    
    self.all.map{|car| car.classification}
  end

  # Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select{|mechanic|mechanic.specialty == self.classification}
  end
  
end
