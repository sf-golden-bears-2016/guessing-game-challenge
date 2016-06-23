class GuessingGame

  attr_reader :remaining_guesses
  attr_accessor :congrats_message


  def initialize(secret_number,num_of_guesses)
    @secret_number = secret_number
    @num_of_guesses = num_of_guesses
    @remaining_guesses = remaining_guesses
    @numbers_guessed=[]
  end

  def congrats_message

    return "Yay, you won!"

  end

  def has_won?
    if @numbers_guessed.include?(@secret_number)
      return true
    end

  end

  def has_lost?
    if @remaining_guesses==0
      return true
    end
  end


  def guess(number)
    response=''
    @numbers_guessed<<number
    if number > @secret_number
      response<< "Too low!"
    elsif number < @secret_number
      response<< "Too high!"
    else
      congrats_message + " The number was #{@secret_number}"
      @numbers_guessed<< @secret_number
      return true
    end

    if @numbers_guessed.include?(number)
    else
      @remaining_guesses -= 1
    end
    if remaining_guesses==1
      response<<" WARNING: Only one guess left!"
    end
    p response
  end

end
