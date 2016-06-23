class GuessingGame

  attr_accessor :congrats_message, :remaining_guesses

  def initialize(secret_num, remaining_guesses)
    @secret_num = secret_num
    @remaining_guesses = remaining_guesses
    @congrats_message = "Yay, you won!"
    @past_guesses = []
  end

  def guess(guess_num)

    if guess_num == @secret_num
      @congrats_message
    elsif guess_num < @secret_num
      "Too low!"
    elsif guess_num > @secret_num
      "Too high!"
    end

    @past_guesses << guess_num
    @remaining_guesses -= 1
  end

  def has_won?
    false
  end

  def has_lost?
    false
  end

end
