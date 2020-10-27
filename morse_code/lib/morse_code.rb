require 'pry'

MORSE_DICTIONARY = {
  ".-" =>   'a',
  "-..." => 'b',
  "-.-." => 'c',
  "-.." =>  'd',
  "." =>    'e',
  "..-." => 'f',
  "--." =>  'g',
  "...." => 'h',
  ".." =>   'i',
  ".---" => 'j',
  "-.-" =>  'k',
  ".-.." => 'l',
  "--" =>   'm',
  "-." =>   'n',
  "---" =>  'o',
  ".--." => 'p',
  "--.-" => 'q',
  ".-." =>  'r',
  "..." =>  's',
  "-" =>    't',
  "..-" =>  'u',
  "...-" => 'v',
  ".--" =>  'w',
  "-..-" => 'x',
  "-.--" => 'y',
  "--.." => 'z',
  "...---..." => 'SOS',
  ".-.-.-" => '.',
  "-.-.--" => '!'
}

def decode_morse(code)
  code.gsub!(/[ \t]{3,}/, ' space ')
  code.split(' ').map do |char|
    if char == 'space'
      ' '
    else
      MORSE_DICTIONARY[char]
    end
  end.join.upcase.strip
end
