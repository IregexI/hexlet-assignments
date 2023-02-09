# frozen_string_literal: true

# BEGIN
def anagramm_filter(letter, array)
  array.each_with_object([]) do |anagramm, acc|
    acc << anagramm if (letter.split('').sort <=> anagramm.split('').sort).zero?
  end
end
#END
