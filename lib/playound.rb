class PlayRound < PlayGame
  def initialize
    
  end
  def getChoices
    @hChoice = Player.choice()
    @cChoice = Computer.choice()
  end
end