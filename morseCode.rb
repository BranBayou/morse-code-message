class MorseCodeDecoder:
  MORSE_CODE_DICT = {
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

  @staticmethod
  def decode_char(morse_char):
      return MorseCodeDecoder.MORSE_CODE_DICT.get(morse_char, '')

  @staticmethod
  def decode_word(morse_word):
      morse_chars = morse_word.split()
      decoded_word = ''
      for morse_char in morse_chars:
          decoded_char = MorseCodeDecoder.decode_char(morse_char)
          decoded_word += decoded_char
      return decoded_word

  @staticmethod
  def decode_message(morse_message):
      morse_words = morse_message.split('   ')
      decoded_message = ''
      for morse_word in morse_words:
          decoded_word = MorseCodeDecoder.decode_word(morse_word)
          decoded_message += decoded_word + ' '
      return decoded_message.strip().upper()


# Example usage:
morse_message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = MorseCodeDecoder.decode_message(morse_message)
print(decoded_message)