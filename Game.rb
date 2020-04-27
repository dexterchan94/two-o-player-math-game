class Game
  attr_accessor :current_player

  def initialize
    @p1 = Player.new
    @p2 = Player.new
    @current_player = 1
    puts "New game started!"
    self.status
  end

  def status
    puts "Player 1 has #{@p1.lives}/3 lives left"
    puts "Player 2 has #{@p2.lives}/3 lives left"
  end

  def question
    puts "--- NEW TURN ---"
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "Player #{self.current_player}: What is #{num1} + #{num2}?"
    answer = gets.chomp.to_i

    if self.current_player == 1
      if answer == (num1 + num2)
        puts "Correct!"
      else
        puts "Incorrect!"
        @p1.lives -= 1
      end
      self.current_player = 2

    else
      if answer == (num1 + num2)
        puts "Correct!"
      else
        puts "Incorrect!"
        @p2.lives -= 1
      end
      self.current_player = 1
    end
    
    self.status
  end




end
