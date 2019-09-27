module MostCommonInArray
  def most_common(array)
    result = array.uniq.max_by do |i|
      array.count(i)
    end
    result
  end
end