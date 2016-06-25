class GuessingGame
	attr_accessor :congrats_message
	attr_reader :remaining_guesses, :secret_number, :warning, :numbers_guessed

	def initialize(secret_number, guesses)
		@secret_number = secret_number
		@remaining_guesses = guesses
		@congrats_message = "Yay, you won!"
		@warning = " WARNING: Only one guess left!"
		@numbers_guessed = []
	end

	def has_won?
		return true if @numbers_guessed.include?(@secret_number)
		return false if @remaining_guesses >= 1
	end

	def has_lost?
		@remaining_guesses <= 0 ? true : false
	end

	def repeated?(number)
		@numbers_guessed.include?(number)
	end

	def guess(number)
		correct_num = " The number was #{number}"

		"You already won." + correct_num if has_won?
		"You already lost." + correct_num if has_lost?

		@numbers_guessed << number
		return @congrats_message + correct_num if number == @secret_number

		@remaining_guesses -= 1 if !repeated?(number)
		return "You lost!" if has_lost?

		result = number > @secret_number ? "Too high!" : "Too low!"
		result + @warning if @remaining_guesses == 1 
		result
	end

end