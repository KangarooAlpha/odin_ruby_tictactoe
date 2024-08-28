class Computer < Playgame
  def initialize
    choices(@chosenNumbers)
  end
  def choices(num)
    @ch = rand(1..9)
    while num.include?(ch)
      ch = rand(1..9)
    end
  end
end