class PLAYGAME
  def initialize
    drawBoard()
    @lines = [[1,2,3],[4,5,6],[7,8,9]]
  end

  def drawBoard(num = 0, sign = nil)
    if sign != nil && num != 0
      lines = selectedBlock(num, sign, lines)
    end
    lines.map {|row| puts row.to_s.split(",").join(" ")}
  end

  def selectedBlock(num, sign, lines)
    if lines.include?(num)
      lines.each do |row|
        row.each {|val| val = sign if val == num}
      end
    else
      puts "Please choose a different number"
    end
  end

  def displayMessage
    
  end

end