class Alouette
  VERSE_PARTS = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

  MAX_VERSE = 7

  def self.lines_for_verse(verse_num)
    verse_object = VERSE_PARTS(verse_num)

    verse = "Je te plumerai la tête.\nJe te plumerai la tête.\nEt la tête!\nEt la tête!"

    if verse_num > 0
      verse_num.times do |i|
        verse += self.lines_for_verse(i)
      end
    end

    return verse
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
