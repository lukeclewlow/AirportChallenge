require 'plane'

describe Plane do

  let(:plane) { Plane.new }
  let(:airport) {double :airport}

  it 'has a flying status when created' do
    expect(plane).to be_flying
  end

  it 'has a flying status when in the air' do
    plane.fly!
    expect(plane).to be_flying
  end

  it 'should be able to land' do
    plane.land!
    expect(plane).not_to be_flying
  end

 
end