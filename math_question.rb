class MathQuestion
  attr_reader :question, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @question = "What does #{@num1} plus #{@num2} equal?"
  end
end

# new_question = MathQuestion.new
# puts new_question.question
# puts new_question.answer  
