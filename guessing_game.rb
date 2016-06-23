class GuessingGame
  attr_reader :secret_number, :remaining_guesses, :guesses
  attr_accessor :congrats_message

  def initialize(number, guesses)
    @secret_number = number
    @remaining_guesses = guesses
    @congrats_message = "Yay, you won!"
    @guess = nil
    @status = 'still playing. . .'
    @guesses = []
  end

  def has_won?
    if @guess == @secret_number
      @status = "You already won. The number was #{@secret_number}"
      return true
    end
    return false
  end

  def has_lost?
    if @guess != @secret_number && @remaining_guesses == 0
      @status = "You already lost. The number was #{@secret_number}"
      return true
    end
    return false
  end

  def legal_guess(guess)
    @guesses.include?(guess)
  end

  def decrement_remaining_guesses
    @remaining_guesses -= 1
  end

  def guess(guess)
    if !has_won? && ( !has_lost? && !legal_guess(guess) )
      decrement_remaining_guesses
      @guesses << guess
      if guess < @secret_number
        if @remaining_guesses == 1
          return 'Too low! WARNING: Only one guess left!'
        else
           return 'Too low!'
        end
      elsif guess > @remaining_guesses
         return 'Too high!'
      elsif guess == @secret_number
         return @congrats_message + "the number was #{@secret_number}"
         @status = "You already won. The number was #{@secret_number}"
      else
        return "You lost! The number was #{@secret_number}"
        @status = "You already lost. The number was #{@secret_number}"
      end
    end
    return @status
  end

end

game = GuessingGame.new(100,5)
game.guess(4)
game.guess(3)


p game.remaining_guesses

# p game.has_lost?
# p game.has_won?
