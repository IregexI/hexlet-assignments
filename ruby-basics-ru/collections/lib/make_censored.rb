# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  text.split.map {|ch| stop_words.include?(ch)? ch = "$#%!": ch}.join(' ')  
  # END
end

# rubocop:enable Style/For
