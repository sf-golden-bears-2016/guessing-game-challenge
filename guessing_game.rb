class GuessingGame
	attr_accessor :congrats_message
	attr_reader :remaining_guesses

	def initialize(secret_number, guesses)
		@secret_number = secret_number
		@guesses = guesses
		@congrats_message = "Yay, you won!"
		@remaining_guesses = guesses
	end

	def has_won?
	end

	def has_lost?
	end

end