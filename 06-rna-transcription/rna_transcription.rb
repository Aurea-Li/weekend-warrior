require 'pry'
class Complement

  DNA_RNA = { "A"=> "U",
              "C"=> "G",
              "G" => "C",
              "T" => "A"
            }
  RNA_DNA = { "U"=> "A",
              "G"=> "C",
              "C" => "G",
              "A" => "T"
            }

  def self.of_dna(dna)
    rna = dna.split('').map do |char|
      if DNA_RNA[char]
        DNA_RNA[char]
      else
        raise ArgumentError
      end
    end
    return rna.join
  end

  def self.of_rna(rna)
    dna = rna.split('').map do |char|
      if RNA_DNA[char]
        RNA_DNA[char]
      else
        raise ArgumentError
      end
    end
    return dna.join
  end
end
