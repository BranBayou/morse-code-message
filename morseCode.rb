class MorseDecoder
  Dictionary = {
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
  }


  
  def self.decode_word(morse_word)
    decoded_word = ''
    morse_chars = morse_word.split
    morse_chars.each do |morse_char|
      decoded_char = decode_char(morse_char)
      decoded_word += decoded_char
    end
    decoded_word
  end

  def self.decode_message(morse_message)
    decoded_message = ''
    morse_words = morse_message.split('   ')
    morse_words.each do |morse_word|
      decoded_word = decode_word(morse_word)
      decoded_message += decoded_word + ' '
    end
    decoded_message.strip.upcase
  end
end

# Sample decoding 
morse_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..." 
decoded_message = MorseDecoder.decode_message(morse_message) 
puts decoded_message

def self.decode_char(morse_char) Dictionary[morse_char] || '' end
