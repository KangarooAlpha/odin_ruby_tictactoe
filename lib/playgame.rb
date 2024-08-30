class PlayGame
  def initialize
    @@lines = [[1,2,3],[4,5,6],[7,8,9]]
    @@chosenNumbers = []
    @@gamesPlayed = 0
    @@InARow = [
    [1,2,3], [4,5,6], [7,8,9],
    [1,4,7], [2,5,8], [3,6,9],
    [1,5,9], [3,5,7]
    ]
    drawBoard()
    while (@@chosenNumbers.length < 10)
      #debugger

      PlayRound.new()
    end

  end

  def drawBoard(num = 0, sign = nil)
    if sign != nil && num != 0
      @@lines = selectedBlock(Integer(num), sign, @@lines)
      @@chosenNumbers.push(Integer(num))
    end
    @@lines.map {|row| puts row.to_s.gsub(' "" ', '').split(",").join(" ")}
    puts "done"
  end

  def selectedBlock(num, sign, lines)
    puts num
    if lines.flatten.include?(num.to_i)
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

  def checkWinner(hNums, cNums)
    
  end

  def self.keepScore
    @@computerWin = 0
    @@playerWin = 0
  end

end