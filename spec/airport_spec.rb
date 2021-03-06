require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) {double :plane}
  let(:plane2) {double :plane}

  def fill_airport(plane)
    10.times {airport.land(plane)}
  end


  context 'taking off and landing when sunny' do
    
    before{allow(airport).to receive(:weather) {"Sunny"}}

    it 'a plane can land' do
      allow(plane).to receive(:land!)
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      allow(plane).to receive(:land!)
      allow(plane).to receive(:fly!)
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end
  end


  context 'traffic control' do
    before{allow(airport).to receive(:weather) {"Sunny"}}

    it 'the airport should know when its full' do
      allow(plane).to receive(:land!)
      fill_airport plane
      expect(airport).to be_full
    end


    it 'a plane cannot land if the airport is full' do
      allow(plane).to receive(:land!)
      fill_airport plane
      expect{airport.land(plane2)}.to raise_error FullRunwayError
    end
  
  end


  context 'weather conditions' do #Possibly move this to its own class

        before{allow(airport).to receive(:weather) {"Stormy"}}

    it 'should know when there is a storm' do
      expect(airport.weather).to eq("Stormy")
    end

    it 'a plane cannot take off when there is a storm brewing' do
      allow(plane).to receive(:land!)
      allow(plane).to receive(:fly!)
      allow(airport).to receive(:weather) {"Sunny"}
      airport.land(plane)
      allow(airport).to receive(:weather) {"Stormy"}
      expect{airport.take_off(plane)}.to raise_error TooStormy
    end

    it 'a plane cannot land in the middle of a storm' do
      expect{airport.land(plane)}.to raise_error TooStormy
    end

  end

end