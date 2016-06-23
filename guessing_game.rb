class GuessingGame

  attr_accessor :congrats_message, :remaining_guesses


  def initialize(secret_number,num_of_guesses)
    @secret_number = secret_number
    @num_of_guesses = num_of_guesses
    @remaining_guesses = num_of_guesses
    @numbers_guessed=[]
    @congrats_message = "Yay, you won!"
    @response = ''
    @won_games = []
    @won_message = "You already won."
    @loss_message = "You already lost."
  end

  # def congrats_message
  #   return "Yay, you won!"

  # end

  def has_won?
    if @numbers_guessed.include?(@secret_number)
      return true
    else
      return false
    end

  end

  def has_lost?
    if @remaining_guesses==0
      return true
    else
      return false
    end
  end

  def guess(number)
    @remaining_guesses -= 1 if !@numbers_guessed.include?(number)
    @numbers_guessed << number
    if number < @secret_number
      @response = "Too low!"
      @response << " WARNING: Only one guess left!" if remaining_guesses==1
    elsif number > @secret_number
      @response = "Too high!"
      @response << " WARNING: Only one guess left!" if remaining_guesses==1
    else
      @numbers_guessed << @secret_number
      @won_games << 1
      @response = @congrats_message += " The number was #{@secret_number}"
    end
    #THIS IS WORKING!!!
    if has_won?
      @response
    elsif has_lost?
      return "You lost! The number was #{@secret_number}"
    end

    #need a method
    def guess_count
      @numbers_guessed
    end
    #TEST
      #if they have already won
      # if has_won? || number == @secret_number
      #   return @won_message += "The number was #{@secret_number}"
      # elsif has_lost? || remaining_guesses == 0
      #   return @loss_message += "The number was #{@secret_number}"
      # end







      # if won_games
    # elsif has_won?    #@won_games.length > 1
    #   return "You already won. The number was #{@secret_number}"
    # else
      @response
    # end
  end

end
