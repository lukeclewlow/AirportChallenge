class Airport


	def runway
		@runway = []
	end

	def land(plane)
		runway << plane
	end

	def take_off(plane)
		runway.delete(plane)
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