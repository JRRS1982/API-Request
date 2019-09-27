module MostCommonInArray
  def most_common_in_array(array:)
    result = array.uniq.max_by do |i|
      array.count(i)
    end
    result
  end
end