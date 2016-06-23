class GuessingGame
  attr_accessor :congrats_message, :num_of_guesses
  attr_reader :secret_num, :player_guess, :has_lost, :has_won


  def initialize(secret_num, num_of_guesses)
    @secret_num = secret_num
    @num_of_guesses = num_of_guesses
    @congrats_message = "Yay, you won!"
    @has_won = false
    @has_lost = false
  end

  def has_won?
    @has_won
  end

  def has_lost?
    @has_lost
  end

  def remaining_guesses
      self.num_of_guesses
  end

  def guess(player_guess)
    @player_guess = player_guess
    self.num_of_guesses -= 1
    case
    when low_guess
     "Too low!"
    when high_guess
      "Too high!"
    when correct_guess
      "#{self.congrats_message} The number was #{self.secret_num}"
    when high_guess && final_guess
      "Too high! WARNING: Only one guess left!"
    end
   end

  def low_guess
    self.player_guess < secret_num
  end

  def high_guess
    self.player_guess > secret_num
  end

  def correct_guess
    self.player_guess == secret_num
  end

  def final_guess
    remaining_guesses == 1
  end
end

# game = GuessingGame.new(8, 5)
losing_game = GuessingGame.new(999, 1)
p losing_game.final_guess
