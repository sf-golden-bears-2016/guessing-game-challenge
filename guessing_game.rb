class GuessingGame
  attr_reader :guesses, :guess
  attr_accessor :congrats_message, :guesses_remaining

  def initialize(secret_number, guesses_remaining)
    @secret_number = secret_number
    @guesses_remaining = guesses_remaining
    @congrats_message = "Yay, you won!"
    @guess_array = []
  end

  def guess(num)

    if num == @secret_number
      @congrats_message
    elsif num > @secret_number
        if @guess_array.include?(num)
           'Too high!'
        else
          @guesses_remaining -= 1
          @guess_array << num
           'Too high!'
        end
    else num < @secret_number
        if @guess_array.include?(num)
           'Too low!'
        else
          @guesses_remaining -= 1
          @guess_array << num
           'Too low!'
        end
    end
  end

  def remaining_guesses
    @guesses_remaining
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


 #test = GuessingGame.new(5, 3)
 #p test.guess(6)
 #p test.remaining_guesses
 # p test.guess(2)
 #p test.remaining_guesses
 #p test.guess(2)
 #p test.remaining_guesses



