require 'pry'
class Roman

  VALUES = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
  def self.reverter(s)

    sum = 0
    (s.length-1).times do |i|

      if VALUES[s[i]] < VALUES[s[i+1]]
        sum -= VALUES[s[i]]
      else
        sum += VALUES[s[i]]
      end
    end

    return sum + VALUES[s[-1]]
  end
end
