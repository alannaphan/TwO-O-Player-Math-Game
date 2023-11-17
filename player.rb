class Player
  attr_accessor :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = "#{lives}/3"
  end

  def lose_life
    @lives -= 1
  end

  def score
    @score = "#{lives}/3"
  end

end