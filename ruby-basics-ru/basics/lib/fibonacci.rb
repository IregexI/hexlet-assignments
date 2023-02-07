# frozen_string_literal: true

def fibonacci(num)
  beg = 0
  sec = 1

  num.times do
    sec, beg = beg, beg + sec
  end
  beg
end
# END
