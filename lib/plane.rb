class Plane

	def initialize
		fly!
	end

	def flying?
		@flying
	end

	def fly!
		if land!
		end
		@flying = true
	end

	def land!
		@flying = false
	end
	
end