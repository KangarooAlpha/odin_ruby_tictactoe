class Computer < PlayGame
  def initialize(chosenNumbers)
    choice(chosenNumbers)
  end
  def choice(num)
    @ch = rand(1..9)
    while num.include?(@ch)
      @ch = rand(1..9)
    end
    return @ch
  end
end