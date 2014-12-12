class Airport


	def runway
		@runway = []
	end

	def land(plane)
		runway << plane
	end

	def plane_count
		@runway.count
	end

end