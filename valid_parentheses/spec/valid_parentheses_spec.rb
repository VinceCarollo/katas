require './lib/valid_parentheses'

RSpec.describe 'Valid Parentheses' do
  it "can tell if string has valid parentheses open and close" do
    # expect(valid_parentheses("  (")).to be false
    # expect(valid_parentheses(")test")).to be false
    # expect(valid_parentheses("")).to be true
    # expect(valid_parentheses("hi())(")).to be false
    expect(valid_parentheses("hi(hi)()")).to be true
    # expect(valid_parentheses("())(()")).to be false
  end
end
