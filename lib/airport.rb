	class FullRunwayError < Exception
	def message
		'Airport is full'
	end
end

class TooStormy < Exception
	def message
		'Too stormy to take off'
	end
end


class Airport


	DEFAULT_CAPACITY = 10


	def initialize
		@runway = []
		capacity
		weather
	end

	def land(plane)
		raise FullRunwayError if full?
		plane.land! if clear_for_landing
		@runway << plane
	end

	def take_off(plane)
		@runway.delete(plane) if clear_for_takeoff
		plane.fly!
	end

	def plane_count
		@runway.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def full?
		plane_count >= capacity
	end

	def weather
		(1..5).to_a.sample >= 2 ? "Stormy" : "Sunny"
	end

	def clear_for_landing
		raise TooStormy if weather == "Stormy"
		true
	end
	
	alias_method :clear_for_takeoff, :clear_for_landing

end