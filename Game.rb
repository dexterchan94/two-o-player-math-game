class Game
  attr_accessor :current_player

  def initialize
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @current_player = @p1
    puts "New game started!"
    self.status
  end

  def status
    puts "Player 1 has #{@p1.lives}/3 lives left"
    puts "Player 2 has #{@p2.lives}/3 lives left"
  end

  def question
    puts "--- NEW TURN ---"
    current_question = Question.new
    puts "Player #{@current_player.id}: #{current_question.ask}"
    answer = gets.chomp.to_i

    if current_question.guess?(answer)
      puts "Correct!"
    else
      puts "Incorrect!"
      @current_player.lose_life
    end

    self.switch_player
    self.status
  end

  def switch_player
    if @current_player.id == 1
      self.current_player = @p2
    else
      self.current_player = @p1
    end
  end







end
