class GuessingGame

  attr_accessor :congrats_message, :remaining_guesses, :past_guesses

  def initialize(secret_num, remaining_guesses)
    @secret_num = secret_num
    @remaining_guesses = remaining_guesses
    @congrats_message = "Yay, you won!"
    @past_guesses = []
  end

  def guess(guess_num)

    if guess_num == @secret_num
      message = @congrats_message
    elsif guess_num < @secret_num && @past_guesses.include?(guess_num) == false
      message = "Too low!"
      @remaining_guesses -= 1
      if @remaining_guesses == 1
        message += " WARNING: Only one guess left!"
      end
      @past_guesses << guess_num
    elsif guess_num > @secret_num && @past_guesses.include?(guess_num) == false
      message = "Too high!"
      @remaining_guesses -= 1
      if @remaining_guesses == 1
        message += " WARNING: Only one guess left!"
      end
      @past_guesses << guess_num
    elsif guess_num < @secret_num && @past_guesses.include?(guess_num)
      message = "Too low!"
      if @remaining_guesses == 1
        message += " WARNING: Only one guess left!"
      end
    elsif guess_num > @secret_num && @past_guesses.include?(guess_num)
      message = "Too high!"
      if @remaining_guesses == 1
        message += " WARNING: Only one guess left!"
      end
    else
      message = "Invalid"
    end

    message

  end


  def has_won?
    false
  end

  def has_lost?
    false
  end

end
