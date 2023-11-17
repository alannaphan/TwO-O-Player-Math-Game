require './player'
require './math_question'

class MathGame
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def start_game
    while @player1.lives > 0 && @player2.lives > 0

      puts "\n----- NEW TURN -----"
      question = MathQuestion.new

      puts "#{current_player.name}: #{question.question}"
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "\n#{current_player.name}: YAY! You got it. Math Genius you are indeed 😎"

      else
        puts "\n#{current_player.name}: Yikes idk about that one! The answer is #{question.answer}."
        current_player.lose_life
        puts "\n#{current_player.name} loses a life 😭"
      end

      puts "\nP1: #{player1.score} vs P2: #{player2.score}"
      switch_player
    end
    puts "\n🎉 #{current_player.name} wins with a score of #{current_player.score} 🎉"
    puts "\n----- GAME OVER -----"
    puts '      Good bye!'
  end

  private

  attr_reader :player1, :player2, :current_player

  def switch_player
    @current_player = current_player == player1 ? player2 : player1
  end
end

game = MathGame.new
game.start_game