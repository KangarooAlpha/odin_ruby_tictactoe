class Player < PlayRound
  attr_reader :h
  def initialize
    choice()

  end

  def choice
    puts ("Please choose a number on the grid")
    @h = ("1")
    return @h
  end

end