require './lib/multiples'

RSpec.describe '#solution' do
  it 'can return sum of multiples of 3 or 5' do
    expect(solution(10)).to eq(23)
    expect(solution(20)).to eq(78)
    expect(solution(200)).to eq(9168)
  end
end