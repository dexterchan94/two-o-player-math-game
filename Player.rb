class Player
  attr_accessor :lives
  attr_reader :id

  def initialize(id)
    @id = id
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end
