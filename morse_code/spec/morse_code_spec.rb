require './lib/morse_code'

RSpec.describe 'Morse Code' do
  it 'decodes' do
    expect(decode_morse('.... . -.--   .--- ..- -.. .')).to eq('HEY JUDE')
    expect(decode_morse('...---...')).to eq('SOS')
  end
end
