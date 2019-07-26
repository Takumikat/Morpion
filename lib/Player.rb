require 'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require_relative 'Board'
require_relative 'Show'

class Player
	
	attr_accessor :nom, :symbol

	def initialize (nom, symbol)
		@nom = gets.chomp
		@symbol = symbol
	end 

end 

puts "What the fuck Felix ?"