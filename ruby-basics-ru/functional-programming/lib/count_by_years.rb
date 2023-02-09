# frozen_string_literal: true

def count_by_years(users)
# BEGIN
  users.filter {|user| user[:gender] == 'male'}.map {|user| user[:birthday].split('-').first}.each_with_object(Hash.new(0)) {|year, acc| acc[year] += 1}
# END
end
