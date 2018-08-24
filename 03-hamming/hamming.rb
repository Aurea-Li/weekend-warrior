class Hamming

  def self.compute(str1, str2)

    unless str1.length == str2.length
      raise ArgumentError
    end
    
    distance = 0
    str1.length.times do |i|
      distance += 1 if str1[i] != str2[i]
    end

  return distance
  end

end
