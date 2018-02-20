require 'docking_station'
describe DockingStation do
  describe '.release_bike' do
    it "release bike on docking station" do
      expect(DockingStation).to respond_to '.release_bike'

    end

  end

end
