class GuessingGame
  attr_reader :guesses, :guess
  attr_accessor :congrats_message

  def initialize(secret_number, guesses_remaining)
    @secret_number = secret_number
    @guesses_remaining = guesses_remaining
    @congrats_message = "Yay, you won!"
    @guess = []
  end

  def guess
   #@guess << guess
   #if @guess > @secret_number
   #  p 'Too high!'
   #elsif @guess < @secret_number
   #  p 'Too low!'
   #else
   #  congrats_message
   #end
   #remaining_guesses
  end

  def remaining_guesses
    if guess == false
      @guesses_remaining -= 1
    else
      @guesses_remaining
    end
  end

  def has_won?
    false
  end

  def has_lost?
    false
  end
  #def congrats_message

  #end
end


# test = GuessingGame.new(5, 3)
# p test.remaining_guesses
