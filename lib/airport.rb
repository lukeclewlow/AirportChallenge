require 'byebug'


class FullRunwayError < Exception
	def message
		'Airport is full'
	end
end

class TooStormyForTakeOff < Exception
	def message
		'Too stormy to take off'
	end
end


class Airport


	def initialize
		@runway = []
		capacity
		@weather = weather
	end

	def land(plane)
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
		weather[selection]
	end

	def stormy
		raise TooStormyForTakeOff if weather == "Stormy"
	end



end