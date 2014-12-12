require 'byebug'


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


	def initialize
		@runway = []
		capacity
		@weather = "Sunny"
	end

	def land(plane)
		stormy
		raise FullRunwayError if full?
		@runway << plane
	end

	def take_off(plane)
		stormy
		@runway.delete(plane)
	end

	def plane_count
		@runway.count
	end

	def capacity
		@capacity = 1
	end

	def full?
		plane_count == capacity
	end

	def weather
		weather = [ "Sunny", "Stormy" ]
		selection = rand(2)
		@weather = weather[selection]
	end

	def stormy
		raise TooStormy if weather == "Stormy"
	end



end