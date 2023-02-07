# frozen_string_literal: true

def fizz_buzz(start, stop)
  res = []
  
  return if start > stop
  
  start.upto(stop) do |num|
    res << if (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end
  end
  res.join ' '
end

# END
