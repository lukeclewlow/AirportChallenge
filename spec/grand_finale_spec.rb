require 'byebug'
require 'plane'
require 'airport'



describe "The grand finale" do
	

	let(:airport) { Airport.new }
	let(:plane  ) { Plane.new   }


	it "all planes can land and take off" do
		allow(airport).to receive(:weather) {"Sunny"}
		6.times {airport.land(plane)}
		6.times {airport.take_off(plane)}
		expect(airport.plane_count).to eq(0)
	end


end