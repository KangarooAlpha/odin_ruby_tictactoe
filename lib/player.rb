class Player < PlayGame
  attr_reader :h
  def initialize
    choice()

  end

  def choice
    displayMessage("Please choose a number on the grid")
    @h = gets
    return @h
  end

end