require './lib/find_it'

RSpec.describe 'Find Integer' do
  it "can find the integer that appears an odd number of times" do
    expect(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])).to eq(5)
    expect(find_it([1,1,2,-2,5,2,4,4,-1,-2,5])).to eq(-1)
    expect(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])).to eq(5)
    expect(find_it([10])).to eq(10)
    expect(find_it([1,1,1,1,1,1,10,1,1,1,1])).to eq(10)
  end
end
