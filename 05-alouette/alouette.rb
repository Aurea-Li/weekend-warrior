class Alouette
  VERSE_PARTS = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!"]

  MAX_VERSE = 7

  def self.lines_for_verse(verse_num)

    return [VERSE_PARTS[0]] if verse_num == 0
    return VERSE_PARTS[0..verse_num].reverse
  end

  def self.verse(verse_num)

    verse = "Alouette, gentille alouette, \nAlouette, je te plumerai."
    (verse_num + 1).times do |i|
      verse += self.lines_for_verse
    end

    verse += "Alouette!\nAlouette!\nA-a-a-ah"

    return verse
  end

  def self.sing
    return self.verse(MAX_VERSE)
  end

end
