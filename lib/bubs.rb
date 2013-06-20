# encoding: utf-8
class Bubs
  VERSION = '0.0.2'

  # Convert words to ⓌⓄⓇⒹⓈ.
  #
  # Returns a String, but a much cooler string than what you had initially.
  def self.convert(text)
    text.tr('A-Za-z1-90', 'Ⓐ-Ⓩⓐ-ⓩ①-⑨⓪')
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
