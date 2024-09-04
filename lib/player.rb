class Player < PlayRound
  attr_reader :h
  def initialize(hNum,cNum)
    @hNum = hNum
    @cNum = cNum
    choice()

  end

  def choice
    displayMessage("Please choose a number on the grid")
    @h = gets.chomp!
    #debugger
    if (checkValid(@h) == false)
      @h = choice()
    end
    return @h
  end

  def checkValid(num)

    if @hNum.include?(num) or @cNum.include?(num)
      displayMessage("This number has already been chosen")
      return false
    else 
      return true
    end
  end

end