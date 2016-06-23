class GuessingGame
  attr_accessor :congrats_message, :num_of_guesses, :guesses, :has_lost, :has_won
  attr_reader :secret_num, :player_guess


  def initialize(secret_num, num_of_guesses)
    @secret_num = secret_num
    @num_of_guesses = num_of_guesses
    @congrats_message = "Yay, you won!"
    @has_won = false
    @has_lost = false
    @guesses = []
  end

  def has_won?
    @has_won
  end

  def has_lost?
    self.has_lost = true if self.num_of_guesses == 0
    @has_lost
  end

  def remaining_guesses
      self.num_of_guesses
  end

  def guess(player_guess)
    @player_guess = player_guess
    if has_lost?
      "You lost! The number was #{self.secret_num}"
    end
    if !repeated_guess?
      self.guesses << self.player_guess
      self.num_of_guesses -= 1
    end

    case
    when low_guess
     "Too low!"
    when high_guess && final_guess
      "Too high! WARNING: Only one guess left!"
    when high_guess
      "Too high!"
    when correct_guess
      "#{self.congrats_message} The number was #{self.secret_num}"
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
    self.has_won = true
  end

  def final_guess
    remaining_guesses == 1
  end

  def repeated_guess?
    self.guesses.include?(self.player_guess)
  end
end

