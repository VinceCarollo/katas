require './lib/calc_functions'

RSpec.describe 'calculator functions' do
  it 'can multiply' do
    expect(seven(times(five()))).to eq(35)
    expect(four(plus(nine()))).to eq(13)
    expect(eight(minus(three()))).to eq(5)
    expect(six(divided_by(two()))).to eq(3)
  end
end