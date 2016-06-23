class GuessingGame
  attr_accessor :congrats_message, :guessed_number, :remaining_guesses
  attr_reader :secret_num


  def initialize(secret_num, num_guesses)
    @secret_num = secret_num
    @remaining_guesses = num_guesses
    @congrats_message = "Yay, you won!"
    @guessed_number = 0
    @guesses = []
  end


  def has_won?
     false
  end

  def has_lost?
    false
  end

  def guess(num)
    @guesses << num
    @guessed_number = num
    if num < @secret_num
     "Too low!"
    else @guessed_number > @secret_num
      p "Too high!"
    end
    if @guesses.include?(num) == false
     p @remaining_guesses -= 1
    end
  end

end
