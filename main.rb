require './Game'
require './Player'

game = Game.new

while game.instance_variable_get(:@p1).lives > 0 && game.instance_variable_get(:@p2).lives > 0
  game.question
end

puts "--- GAME OVER ---"

if game.instance_variable_get(:@p1).lives == 0
  puts "Player 2 wins!"
else
  puts "Player 1 wins!"
end

puts "Goodbye!"
