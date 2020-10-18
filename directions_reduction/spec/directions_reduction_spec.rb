require './lib/direction_reduction'

RSpec.describe 'Find Integer' do
  it "Gives simpler directions" do
    expect(direction_reduction(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])).to eq(["WEST"])
    expect(direction_reduction(["NORTH", "WEST", "SOUTH", "EAST"])).to eq(["NORTH", "WEST", "SOUTH", "EAST"])
  end
end

# a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# Test.assert_equals(dirReduc(a), ["WEST"])
# u=["NORTH", "WEST", "SOUTH", "EAST"]
# Test.assert_equals(dirReduc(u), ["NORTH", "WEST", "SOUTH", "EAST"])
