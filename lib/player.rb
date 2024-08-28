class Player < PlayGame
  def initialize
    choice()
  end

  def choice()
    puts (("Please choose a number on the grid"))
    return (gets.chomp!)
  end

end