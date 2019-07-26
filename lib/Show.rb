require'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require_relative 'Board'
require_relative 'Show'


class Show < Board

	def show_board(board)
#TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
	puts "#{ @case_symbol} | #{@case_symbol } | #{@case_symbol}"
	puts "-"*20
	puts "#{@case_symbol} | #{@case_symbol} | #{@case_symbol}"
	puts "-"*20
	puts "#{@case_symbol} | #{@case_symbol} | #{@case_symbol}"
	end
end