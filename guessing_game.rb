class GuessingGame
  attr_accessor :secret_num, :allowed_guesses, :congrats_message,
    :remaining_guesses


  def initialize(secret_num, allowed_guesses)
    @secret_num = secret_num
    @allowed_guesses = allowed_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = 5
  end

end
