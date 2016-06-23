class GuessingGame
  attr_accessor :secret_num, :allowed_guesses, :congrats_message,
    :guess, :remaining_guesses, :guesses



  def initialize(secret_num, allowed_guesses)
    @secret_num = secret_num
    @allowed_guesses = allowed_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = allowed_guesses
    @guesses = []
    @guess = -1
  end

  # def remaining_guesses
  #   @allowed_guesses
  # end

  def has_won?
    if @guess == @secret_num
      true
    else
      false
    end
  end

  def has_lost?
    if allowed_guesses == 0
      true
    else
      false
    end
  end

  def guess(num)
    if num < @secret_num
      "Too low!"
    elsif num > @secret_num
      deduct_from_remaining_guesses(num)
      "Too high!"
    end
  end

  def deduct_from_remaining_guesses(num)
    @remaining_guesses -= 1
    if !(@guesses.include?(num))
      @remaining_guesses -=1
    end
  end

  def repeated_guess?(guess)
    @guesses.include?(guess)
  end


end

game = GuessingGame.new(5, 10)

# p game.remaining_guesses
# game.deduct_from_remaining_guesses(6)
# p game.remaining_guesses

# game.guess(3)
# game.guess(5)
# game.guess(8)

# p game.guesses

# p game.repeated_guess?(10)









