module Codebreaker
	class Game
		def initialize(output)
			@output = output
		end

		def start
			@output.puts 'Enter guess: '
			@output.puts 'Welcome to Codebreaker!'

		end
	end
end