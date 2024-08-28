require_relative 'lib/computer'
require_relative 'lib/player'
require_relative 'lib/playgame'
require_relative 'lib/playound'

while 1
  puts "Would you like to play a game of tic tac toe? (y/n)"
  perm = (gets.chomp!)
  perm.downcase
  if perm == 'y'
    puts 'yes'
  end
end