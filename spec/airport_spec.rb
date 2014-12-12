require 'airport'

describe Airport do

  let(:airport) { Airport.new }
  let(:plane) {double :plane}

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
  end