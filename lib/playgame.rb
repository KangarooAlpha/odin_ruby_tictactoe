class PlayGame
  def initialize(lines)
    @lines = lines
    @@chosenNumbers = []
    @@gamesPlayed = 0
    drawBoard()
    while (@@chosenNumbers.length < 10)
      debugger

      PlayRound.new()
    end

  end

  def drawBoard(num = 0, sign = nil)
    if sign != nil && num != 0
      @lines = selectedBlock(num, sign, @@lines)
      @@chosenNumbers.concat(num)
    end
    @lines.map {|row| puts row.to_s.split(",").join(" ")}
    puts "done"
  end

  def selectedBlock(num, sign, lines)
    if lines.include?(num)
      lines.map! do |row|
        row.each_with_index {|val, ind|row[ind] = sign if val == num}
      end
    else
      displayMessage("Please choose a different number")
      
    end
  end

  def displayMessage(string)
    puts string
  end

  def self.keepScore
    @@computerWin = 0
    @@playerWin = 0
  end

end