require 'plane'
require 'airport'



describe "The grand finale" do
	

	let(:airport) { Airport.new }
	let(:plane  ) { Plane.new   }


	it "all planes can land and take off" do
		planes = []
		6.times{planes << Plane.new}
		allow(airport).to receive(:weather) {"Sunny"}
		planes.each {|plane|airport.land(plane)}
		planes.each {|plane|airport.take_off(plane)}
		expect(airport.plane_count).to eq(0)
	end

		it "all planes can land" do
		planes = []
		6.times{planes << Plane.new}
		allow(airport).to receive(:weather) {"Sunny"}
		planes.each {|plane|airport.land(plane)}
		expect(airport.plane_count).to eq(6)
	end

	it "can land all planes" do
		planes = []
		6.times{planes << Plane.new}
		allow(airport).to receive(:weather) {"Sunny"}
		planes.each {|plane|airport.land(plane)}
		expect(planes.map{|plane|plane.flying?}.uniq).to eq [false]
	end

	it "can take off all planes" do
		planes = []
		6.times{planes << Plane.new}
		allow(airport).to receive(:weather) {"Sunny"}
		planes.each {|plane|airport.land(plane)}
		planes.each {|plane|airport.take_off(plane)}
		expect(planes.map{|plane|plane.flying?}.uniq).to eq [true]
	end


end