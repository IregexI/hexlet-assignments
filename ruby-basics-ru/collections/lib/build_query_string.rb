# frozen_string_literal: true

# rubocop:disable Style/For
def build_query_string(hash_param)
# BEGIN
  hash_param.sort_by(&:first).map {|key, value| "#{key}=#{value}"}.join('&')
# END
end
# rubocop:enable Style/For
