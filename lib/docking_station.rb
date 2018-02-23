require './lib/bike.rb'
class DockingStation
  attr_reader  :bike
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @capacity.times{ @bikes << Bike.new }
  end

  def release_bike
    if empty?
      fail 'No bikes available'
    else
      @bikes.pop

    end
  end

  def dock(bike)
    if full?
      fail 'Docking station full'
    else
      @bikes.push(Bike.new)
    end
  end

  private
  def full?
    @bikes.length == @capacity
  end

  def empty?
    @bikes.length == 0
  end
  public
  def store_bike(bike)
    @bike = bike
  end
end
