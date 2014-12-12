require 'byebug'

class FullRunwayError < Exception
	def message
		'Airport is full'
	end
end


class Airport


	def initialize
		@runway = []
		capacity
	end

	def land(plane)
		raise FullRunwayError if full?
		
		@runway << plane
	end

	def take_off(plane)
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


end