# frozen_string_literal: true
def compare_versions(vers1, vers2)
# BEGIN
   vers1.split('.').map {|el| el.to_i} <=> vers2.split('.').map {|el| el.to_i}
# END
end
