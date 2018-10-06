class Alouette
  VERSE_PARTS = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]

  MAX_VERSE = 7

  def self.lines_for_verse(verse_num)

    return [VERSE_PARTS[0]] if verse_num == 0
    return VERSE_PARTS[0..verse_num].reverse
  end

  def self.verse(verse_num)

    phrases = self.lines_for_verse(verse_num)

    phrases.map! do |phrase|
      phrase[3..-2]
    end

    str = "Je te plumerai #{phrases.first}.\nJe te plumerai #{phrases.first}."

    phrases.each do |phrase|
      str += "\nEt #{phrase}!\nEt #{phrase}!"
    end

    str += "\nAlouette!\nAlouette!\nA-a-a-ah"
    return str
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    str = refrain
    (MAX_VERSE + 1).times do |i|
      str  += ("\n\n" + self.verse(i))
      str += ("\n\n" + refrain)
    end
    return str
  end
end
