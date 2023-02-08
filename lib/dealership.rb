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

  def total_value
    @inventory.map do |car|
      car.total_cost
    end.sum
  end

  def details
    deets = {"total_value" => total_value, "address" => @address}
  end

  def average_price_of_car
    format_number(total_value / inventory_count)
  end

  def format_number(number) #come back to this and pick it apart, found this method online
    num_groups = number.to_s.chars.to_a.reverse.each_slice(3)
    num_groups.map(&:join).join(',').reverse
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end
end