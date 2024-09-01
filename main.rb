require_relative 'lib/playgame'
require_relative 'lib/playound'
require_relative 'lib/computer'
require_relative 'lib/player'


while (true)
  puts "Would you like to play a game of tic tac toe? (y/n)"
  perm = "y"
  perm.downcase!
  if (perm == "y")
    PlayGame.new
  end
end