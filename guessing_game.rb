class GuessingGame
  attr_reader :remaining_guesses
  attr_accessor :congrats_message
  def initialize(secret_number, remaining_guesses)
    @secret_number = secret_number
    @remaining_guesses = remaining_guesses
    @congrats_message ="Yay, you won!"
    @guesses = []
    @won = false
    @lost = false
  end

  def has_won?
    @won
  end

  def has_lost?
    @lost
  end

  def guess(number)
    warnings = ["", " WARNING: Only one guess left!", ]
    suffix = warnings[0]
    if !@guesses.include?(number)
      @remaining_guesses -= 1
      @guesses << number
    end
    if number == @secret_number
      return "#{@congrats_message} The number was #{@secret_number}"
    end
    if @remaining_guesses > 0
      suffix = warnings[1] if @remaining_guesses == 1
      if number < @secret_number
        return "Too low!#{suffix}"
      else number > @secret_number
        return "Too high!#{suffix}"
      end
    end
    return "You lost! The number was #{@secret_number}"
  end
end
