class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(secret_number, allowed_guesses)
    @game_name = game_name
    @secret_number = secret_number
    @allowed_guesses = allowed_guesses
    @remaining_guesses = allowed_guesses
    @guess_number = guess_number
    @guess_is_too_low = false
    @guess_is_too_high = false
    @guess_is_a_repeat = false
    @guess_history = []
    @has_won = false
    @has_lost = false
    @has_won_already = false
    @has_lost_already = false
    @congrats_message = "Yay, you won!"
    @output_message = " "
  end

  # def create_secret_number
  #   @secret_number = rand(1..1000)
  # end

  # def create_allowed_guesses
  #   @allowed_guesses = rand(1..10)
  # end

  def has_won
    @has_won
  end

  def has_lost
    if @remaining_guesses == 0
      @has_lost = true
    end
  end

  def guesses_remaining
    puts "There will be #{allowed_guesses} guesses remaining in game #{game_name}"
  end

  def guess(input)
    @guess_history << input
    if input == @secret_number
      puts " Correct! The number was #{@secret_number}.
      #{@congrats_message}"
      @has_won = true
    elsif input < @secret_number
      puts "Too low!"
    else
      puts "Too high!"
    end
    if @guess_history.include(input)
      return @remaining_guesses
    else
      return @remaining_guesses - 1
    end
  end





end
