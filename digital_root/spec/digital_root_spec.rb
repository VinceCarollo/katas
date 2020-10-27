require './lib/digital_root'

RSpec.describe 'Digital Root' do
  it 'finds the recursive sum of all the digits in a number' do
    expect(digital_root(16)).to eq(7)
    expect(digital_root(942)).to eq(6)
    expect(digital_root(132189)).to eq(6)
    expect(digital_root(493193)).to eq(2)
  end
end
