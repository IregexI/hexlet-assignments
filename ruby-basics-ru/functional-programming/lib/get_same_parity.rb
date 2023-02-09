# frozen_string_literal: true
def get_same_parity(array)
# BEGIN
  return array if array.empty?
  
  array.filter &( if array.first.odd?
    proc{ |value| value.odd? }
  else
    proc{ |value| value.even? }
  end )
# END
end
