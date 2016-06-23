class GuessingGame
	attr_accessor :remaining_guesses, :congrats_message, :remaining_guesses

	def initialize(secret_number, allowed_guesses)
		@remaining_guesses = remaining_guesses
		@secret_number = secret_number
		@allowed_guesses = allowed_guesses
		@congrats_message = "Yay, you won!"
		@remaining_guesses = remaining_guesses
	end

	# def congrats_message
	# 	@congrats_message
	# end

	def remaining_guesses

	end

	def guess(guess_number)
	end
end