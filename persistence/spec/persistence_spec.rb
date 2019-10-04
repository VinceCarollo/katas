require './lib/persistence.rb'

RSpec.describe 'Persistence' do
  it "can return it multiplicative persistence" do
    expect(persistence(39)).to eq(3)
    expect(persistence(999)).to eq(4)
    expect(persistence(4)).to eq(0)
  end
end
