#require'bundler'
#Bundler.require

require_relative 'lib/Player'
require_relative 'lib/Game'
require_relative 'lib/Board_Cases'
require_relative 'lib/Board'
require_relative 'lib/Show'


class Application 

	puts "============================="
	puts "|Bienvenue sur le morpion   |"
	puts "|(C'est grave chaud à faire)|"
	puts "============================="

	my_game = Game.new


	while 

		my_game.turn

	
	end 

	#my_game.game_end

	#puts "Voulez vous recommencer ?"
	#puts" - y"
	#puts " - n"
	gets.chomp 
	my_game.new_round
end

binding.pry
puts "truc"