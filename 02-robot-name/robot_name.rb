class Robot

  attr_reader :name

  def initialize
    @name = create_name
  end

  def reset
    @name = create_name
  end

  def create_name

    letter_list = [*'A'..'Z']
    letters = letter_list[rand(26)] + letter_list[rand(26)]
    name = letters + [rand(10), rand(10), rand(10)].join

    return name
  end
end
