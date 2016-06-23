class GuessingGame
	attr_accessor :allowed_guesses, :congrats_message, :secret_number

	def initialize(secret_number, allowed_guesses)
		@remaining_guesses = remaining_guesses
		@secret_number = secret_number
		@allowed_guesses = allowed_guesses
		@congrats_message = "Yay, you won!"
	end


	def remaining_guesses
		@allowed_guesses
	end

	def has_won?
		return false if remaining_guesses != 0
	end

	def has_lost?
		return false if remaining_guesses != 0
	end

	def guess(guess_number)
		# if @allowed_guesses == 0
		# 	"You lost! The number was #{@secret_number}"
		# elsif @allowed_guesses == 1
		# 	"WARNING: Only one guess left!"
		# else
	
			if guess_number == @secret_number		
				return @congrats_message
			elsif guess_number > @secret_number
				@allowed_guesses -= 1
				return "Too high!"
			else guess_number < @secret_number
				@allowed_guesses -= 1
				return "Too low!"
			end
		# end
	end
end