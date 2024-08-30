class PlayRound < PlayGame
  def initialize
    getChoices()
  end

  def getChoices
    @hChoice = Player.new()
    drawBoard(@hChoice.h, "O")
    puts "The player chose #{@hChoice}"
    @cChoice = Computer.new(@@chosenNumbers)
    drawBoard(@cChoice, "X")
    puts "The computer chose #{@cChoice}"
  end

end