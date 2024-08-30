require_relative 'lib/playgame'
require_relative 'lib/playound'
require_relative 'lib/computer'
require_relative 'lib/player'


while (true)
  puts "Would you like to play a game of tic tac toe? (y/n)"
  perm = "y"
  perm.downcase!
  if (perm == "y")
    PlayGame.new([[1,2,3],[4,5,6],[7,8,9]])
  end
end