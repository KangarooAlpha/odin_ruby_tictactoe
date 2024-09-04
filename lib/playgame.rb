class PlayGame
  def initialize
    @@lines = [[1,2,3],[4,5,6],[7,8,9]]
    @@chosenNumbers = []
    @@hNumbers = []
    @@cNumbers = []
    #@@gamesPlayed += 1
    @@InARow = [
    [1,2,3], [4,5,6], [7,8,9],
    [1,4,7], [2,5,8], [3,6,9],
    [1,5,9], [3,5,7]
    ]
    @@winner = nil
    drawBoard()
    catch :game do
    while (@@chosenNumbers.length < 10)
      #debugger
      if (@@winner != nil)
        displayMessage("The winner of this match is #{@winner}!")
        throw :game
      end
      PlayRound.new(@@hNumbers, @@cNumbers)
    end
  end

  end

  def drawBoard(num = 0, sign = nil)
    if sign != nil && num != 0
      @@lines = selectedBlock(Integer(num), sign, @@lines)
      @@chosenNumbers.push(Integer(num))
    end
    @@lines.map {|row| puts row.to_s.gsub(' "" ', '').split(",").join(" ")}
  end

  def selectedBlock(num, sign, lines)
    puts num
    if lines.flatten.include?(num.to_i)
      lines.map! do |row|
        row.each_with_index {|val, ind|row[ind] = sign if val == num}
      end
    end
  end

  def displayMessage(string)
    puts string
  end

  def checkHuman(hNums)
    if @@InARow.any? {|set| set.all?{|num| hNums.include?(num)}}
      @@winner = "Player"
    end
  end

  def checkComputer(cNums)
    if @@InARow.any? {|set| set.all?{|num| cNums.include?(num)}}
      @@winner = "Computer"
    end
  end

  def self.keepScore
    @@computerWin = 0
    @@playerWin = 0
  end

end