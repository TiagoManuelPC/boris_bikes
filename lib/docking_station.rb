require_relative 'bike'
class DockingStation
    ::DEFAULT_CAPACITY = 20
    attr_reader :capacity
    def initialize(capacity = DEFAULT_CAPACITY)
        @dock = []
        @capacity = capacity
    end

    def release_bike
        fail 'No bikes available' if empty?
        @dock.pop 
    end

    def dock(bike)  
        fail 'full' if full?
        @dock << bike
    end 
    private 
    def empty?
        @dock.empty?
    end
    def full?
        @dock.length >= DEFAULT_CAPACITY 
    end


end
