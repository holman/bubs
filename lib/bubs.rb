# encoding: utf-8
class Bubs
  VERSION = '0.0.2'

  CONVERT_MAP = {
    'A' => 'Ⓐ',
    'B' => 'Ⓑ',
    'C' => 'Ⓒ',
    'D' => 'Ⓓ',
    'E' => 'Ⓔ',
    'F' => 'Ⓕ',
    'G' => 'Ⓖ',
    'H' => 'Ⓗ',
    'I' => 'Ⓘ',
    'J' => 'Ⓙ',
    'K' => 'Ⓚ',
    'L' => 'Ⓛ',
    'M' => 'Ⓜ',
    'N' => 'Ⓝ',
    'O' => 'Ⓞ',
    'P' => 'Ⓟ',
    'Q' => 'Ⓠ',
    'R' => 'Ⓡ',
    'S' => 'Ⓢ',
    'T' => 'Ⓣ',
    'U' => 'Ⓤ',
    'V' => 'Ⓥ',
    'W' => 'Ⓦ',
    'X' => 'Ⓧ',
    'Y' => 'Ⓨ',
    'Z' => 'Ⓩ',
    'a' => 'ⓐ',
    'b' => 'ⓑ',
    'c' => 'ⓒ',
    'd' => 'ⓓ',
    'e' => 'ⓔ',
    'f' => 'ⓕ',
    'g' => 'ⓖ',
    'h' => 'ⓗ',
    'i' => 'ⓘ',
    'j' => 'ⓙ',
    'k' => 'ⓚ',
    'l' => 'ⓛ',
    'm' => 'ⓜ',
    'n' => 'ⓝ',
    'o' => 'ⓞ',
    'p' => 'ⓟ',
    'q' => 'ⓠ',
    'r' => 'ⓡ',
    's' => 'ⓢ',
    't' => 'ⓣ',
    'u' => 'ⓤ',
    'v' => 'ⓥ',
    'w' => 'ⓦ',
    'x' => 'ⓧ',
    'y' => 'ⓨ',
    'z' => 'ⓩ',
    '1' => '①',
    '2' => '②',
    '3' => '③',
    '4' => '④',
    '5' => '⑤',
    '6' => '⑥',
    '7' => '⑦',
    '8' => '⑧',
    '9' => '⑨',
    '0' => '⓪'
  }

  # Convert words to ⓌⓄⓇⒹⓈ.
  #
  # Returns a String, but a much cooler string than what you had initially.
  def self.convert(text)
    text.gsub(/[a-z0-9]/i, CONVERT_MAP)
  end

  # Copies the text to clipboard
  #
  # ... not in windows, tho
  def self.copy(text)
    copycmd = case RUBY_PLATFORM
    when /darwin/
      'pbcopy'
    when /linux/
      'xclip'
    end

    copycmd && `printf "#{text}" | #{copycmd}`
  end
end
