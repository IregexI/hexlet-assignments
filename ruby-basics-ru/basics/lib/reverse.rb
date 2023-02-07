# frozen_string_literal: true

def reverse(str)
  res = ''
  (str.length - 1).downto(0) do |ch|
    res += str[ch]
  end
  res
end

# END
