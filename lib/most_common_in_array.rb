# frozen_string_literal: true

# does what it says on the tin... returns the most common object in an array.
module MostCommonInArray
  def most_common_in_array(array:)
    result = array.uniq.max_by do |i|
      array.count(i)
    end
    result
  end
end
