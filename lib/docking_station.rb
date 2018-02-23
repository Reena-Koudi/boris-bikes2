require './lib/bike.rb'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bike
 def initialize
   @bikes = []
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

      @bikes.push(bike)
    bike
  end
end
private
def full?
  @bikes.length == DEFAULT_CAPACITY

end


  def empty?
    @bikes.length == 0
  end
end
