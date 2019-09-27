module SelectFromHash
  def create_array(hash, key)
    result = []
    return unless !hash.nil?

    hash.select do |each_key|
      result << each_key[key]
    end
    result
  end
end