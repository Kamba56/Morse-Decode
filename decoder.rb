MORSE_ALPHABETS = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_characters(char)
  MORSE_ALPHABETS[char]
end

def decode_word(word)
  output_word = ''
  arr = word.split
  arr.each { |n| output_word = (output_word + (decode_characters n) ) }
  output_word
end

# test comand decodeWord "-- -.--   -. .- -- ."

def decode_phrase(phrase)
  output = ''
  arr = phrase.split('   ')
  arr.each do |n|
    output = "#{output}#{(decode_word n)} "
  end
  output.strip
end
