class PlayRound < PlayGame
  attr_accessor :hNumbers, :cNumbers
  def initialize
    getChoices()
  end

  def getChoices
    @hNumbers = []
    @cNumbers = []
    @hChoice = Player.new()
    @hNum = Integer(@hChoice.h)
    drawBoard(@hNum, "O")
    displayMessage("The player chose #{@hNum}")
    @@hNumbers.push(@hNum)
    @cChoice = Computer.new(@@chosenNumbers)
    @cNum = @cChoice.ch
    drawBoard(@cNum, "X")
    displayMessage("The computer chose #{@cNum}")
    @cNumbers.push(@cNum)
  end

end