class PlayRound < PlayGame
  attr_accessor :hNumbers, :cNumbers
  def initialize(hNumbers,cNumbers)
    @hNumbers = hNumbers
    @cNumbers = cNumbers
    getChoices()
  end

  def getChoices

    @hChoice = Player.new(@hNumbers,@cNumbers)
    @hNum = Integer(@hChoice.h)
    drawBoard(@hNum, "O")
    displayMessage("The player chose #{@hNum}")
    @hNumbers.push(@hNum).flatten!
    checkHuman(@hNumbers)
    @cChoice = Computer.new(@@chosenNumbers)
    @cNum = @cChoice.ch
    drawBoard(@cNum, "X")
    displayMessage("The computer chose #{@cNum}")
    @cNumbers.push(@cNum).flatten!
    checkComputer(@cNumbers)
  end

end