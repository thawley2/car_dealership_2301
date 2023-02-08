class Dealership
  attr_reader :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.length >= 1
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end
end