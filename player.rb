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

# new_player = Player.new("Player 1")
# puts new_player.name
# puts new_player.lives
# puts new_player.score
# new_player.lose_life
# puts new_player.lives
# puts new_player.score