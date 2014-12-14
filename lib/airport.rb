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
		stormy
		raise FullRunwayError if full?
		plane.land!
		@runway << plane

	end

	def take_off(plane)
		stormy
		@runway.delete(plane)
		plane.fly!
	end

	def plane_count
		@runway.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def full?
		plane_count == capacity
	end

	def weather
		weather = [ "Sunny", "Sunny", "Sunny", "Stormy", "Stormy" ]
		selection = rand(5)
		@weather = weather[selection]
	end

	def stormy
		raise TooStormy if weather == "Stormy"
	end

end