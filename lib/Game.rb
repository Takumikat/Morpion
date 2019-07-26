require'bundler'
Bundler.require

require_relative 'Player'
require_relative 'Game'
require_relative 'Board_Cases'
require_relative 'Board'
require_relative 'Show'

class Game
#TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
attr_accessor :current_player, :status, :board

	def initialize
#TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player	
	puts "ENTREZ VOS NOMS BANDE DE BA....."
	player1 = Player.new(@nom, "x")
	player2 = Player.new(@nom, "o")
	@player = [player1, player2]
	@current_player = @player[0]
	@status = "en cours"
	@board = Board.new
	end
	
	def turn
#TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
	Show.new.show_board(@board)
	@board.play_turn(current_player)
	@board.victory?(current_player)
	@current_player = @player.rotate[0]
	end
	
	def new_round
# TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
	@board = Board.new
	end

	def game_end
# TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul 
	puts "le vainceur est #{@status}" if @status = @current_player
	puts "c'est un magnifique NUUUUUUUUUL" if @status == "nul"
	end    
end
