require './Game'
require './Question'
require './Player'

game = Game.new

while game.instance_variable_get(:@p1).is_alive? && game.instance_variable_get(:@p2).is_alive?
  game.question
end

puts "--- GAME OVER ---"

unless game.instance_variable_get(:@p1).is_alive?
  puts "Player 2 wins!"
else
  puts "Player 1 wins!"
end

puts "Goodbye!"
