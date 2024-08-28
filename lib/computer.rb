class Computer < PlayGame
  def initialize
    choices(@chosenNumbers)
  end
  def choice(num)
    num = [3,4,2,9,1,5,6,7]
    @ch = rand(1..9)
    while num.include?(@ch)
      @ch = rand(1..9)
    end
    return @ch
  end
end