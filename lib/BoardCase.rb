require'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require_relative 'Board'
require_relative 'Show'


class Board_Cases 
	attr_accessor :symbol, :cases
#la classe a 2 attr_accessor : #:symbol  (son contenu d'une valeur en string X, O, ou vide), #:case (son identifiant de case pour la position (A-B-C et 1-2-3))
	def initialize(cases) #doit régler sa valeur, ainsi que son numéro de case
		@cases = cases
		@case_symbol = " "
	end
end
#Comment relier show.new et show_board

