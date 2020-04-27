require './Game'
require './Question'
require './Player'

game = Game.new

while !game.game_over?
  game.question
end

