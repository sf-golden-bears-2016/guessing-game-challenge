class GuessingGame
	attr_accessor :remaining_guesses, :congrats_message
	attr_reader :secret_number, :warning, :numbers_guessed, :correct_num

	def initialize(secret_number, guesses)
		@secret_number = secret_number
		@remaining_guesses = guesses
		@numbers_guessed = []
		@congrats_message = "Yay, you won!"
		@warning = " WARNING: Only one guess left!"
		@correct_num = " The number was "
		@result = @correct_num + @secret_number.to_s
	end

	def has_won?
		@numbers_guessed.include?(@secret_number) ? true : false
	end

	def has_lost?
		@remaining_guesses == 0 && !has_won? ? true : false
	end

	def repeated?(number)
		@numbers_guessed.include?(number)
	end

	def game_over?
		return "You already won." + @result if has_won?
		return "You already lost." + @result if has_lost?
		false
	end

	def guess(number)
		return game_over? if game_over?
		@remaining_guesses -= 1 if !repeated?(number)
		@numbers_guessed << number

		return @congrats_message + @result if number == @secret_number
		return "You lost!" + @result if has_lost?

		result = number > @secret_number ? "Too high!" : "Too low!"
		result += @warning if @remaining_guesses == 1
		result
	end
end
