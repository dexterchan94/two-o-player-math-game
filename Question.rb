class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def ask
    "What is #{@num1} + #{@num2}?"
  end

  def guess?(ans)
    ans == @answer
  end
end
