class Plane

	def initialize
		fly!
	end

	def flying?
		@flying
	end

	def fly!	
		@flying = true unless flying? 
	end

	def land!
		@flying = false
	end
	
end