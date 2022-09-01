Morse_Alphabets = {
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
  '--..' => 'Z',
}

def decodeCharacters (char)
  return Morse_Alphabets[char]
end

def decodeWord (word)
  outputWord = ''
  arr = word.split
  arr.each{ |n| outputWord = (outputWord + (decodeCharacters n) )}
  return outputWord
end

# test comand decodeWord "-- -.--   -. .- -- ."

def decodePhrase (phrase)
  output = ''
  arr = phrase.split('   ')
  arr.each do |n|
    output = output + (decodeWord n) + ' '
  end
  return output.strip
end