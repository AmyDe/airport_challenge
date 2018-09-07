require 'airport'

describe Airport do

  # describe "#land_plane" do
  #   it "should raise an error when weather is stormy" do
  #     expect { subject.land_plane(Plane.new) }.to raise_error "The weather is too bad to land"
  #   end
  # end

  describe "#land_plane" do
    it "should not land plane if airport is full (10)" do
      10.times { subject.land_plane(Plane.new) }
      expect { subject.land_plane(Plane.new) }.to raise_error "No space to land"
    end
  end

  # describe "#take_off" do
  #   it "should raise an error if weather is stormy" do
  #     expect { subject.take_off(Plane.new) }.to raise_error "The weather is too bad to take off"
  #   end
  # end

  describe "#stormy?" do
    it "should return true if weather is stormy" do
      airport = Airport.new
      allow(airport).to receive(:rand).and_return(9)
      expect(airport.stormy?).to eq true
    end
  end

  # describe "#airport_full?" do
  #   it "should return true if airport is full" do
  #     expect(subject.airport_full?).to eq true
  #   end
  # end

end
