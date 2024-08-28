class PLAYER < PLAYGAME
  def initialize
    choice()
  end

  def choice()
    puts (("Please choose a number on the grid"))
    a = gets.chomp!
  end
end