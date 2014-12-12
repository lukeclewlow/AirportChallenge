require 'byebug'
require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) {double :plane}
  let(:plane2) {double :plane}

  def fill_airport(plane)
    1.times {airport.land(plane)}
  end


  context 'taking off and landing' do

    it 'a plane can land' do
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end
  end


  context 'traffic control' do

    it 'the airport should know when its full' do
      fill_airport plane
      expect(airport).to be_full
    end


    it 'a plane cannot land if the airport is full' do
      fill_airport plane
      expect{airport.land(plane2)}.to raise_error FullRunwayError
    end
  
  end


  context 'weather conditions' do

    it 'should know when there is a storm' do
      allow(airport).to receive(:weather) {"Stormy"}
      expect(airport.weather).to eq("Stormy")
    end

    # it 'a plane cannot take off when there is a storm brewing' do
    #   airport.land(plane)
    #   expect{airport.take_off(plane)}.to


    # end

    # it 'a plane cannot land in the middle of a storm' do

    # end

  end

end