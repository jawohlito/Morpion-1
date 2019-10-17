require 'colorize'

require_relative '../views/display'
require_relative './player'
require_relative './board'
require_relative './board_cell'


class Game

    attr_accessor :players, :board, :symbol
    
    def initialize
    # On initialize une nouvelle partie !
        system "clear"
        welcome_page
        puts ""
        # crée le joueur 1
        print (" Joueur 1, ton symbole sera X , choisis ton nom ").colorize(:color => :cyan)
        print (" :=> ").colorize(:color => :cyan)
        name_player_1 = gets.chomp
            @player1 = Player.new(name_player_1, "X")
        puts ""
        # crée le joueur 2
        print (" Joueur 2, ton symbole sera O , choisis un nom ").colorize(:color => :cyan)
        print (" :=> ").colorize(:color => :cyan)
        name_2 = gets.chomp
            @player2 = Player.new(name_2, "O")
        # crée le plateau de jeu
        @board = Board.new
        puts ""
        @whos_turn_player = @player1
        puts (" Voici le plateau de jeux vide, que la partie commence ! ").colorize(:color => :magenta)
        puts ""
    end


    def whos_turn_running
        # On tourne en boucle tant qu'il n'y a pas de victoire
        # et on compte les tour
        i = 0
        while i < 9
            puts ("=" * 60 ).colorize(:color => :red)
            puts ""
            # Affiche le plateau :
            @board.to_s
            puts ""
            puts ("=" * 60 ).colorize(:color => :red)
            puts ""
            puts ("  C'est le tour de #{@whos_turn_player.name} avec les #{@whos_turn_player.symbol}").colorize(:color => :cyan)
            print ("  Veuillez Choisir une case ").colorize(:color => :cyan)
            print (" :=> ").colorize(:color => :cyan)
    
            # On appelle la méthode play de la classe board sur le joueur en cours . Elle demande au joueur quelle case il joue, puis affiche son symbole dans la case
            @board.play(@whos_turn_player.symbol)
            puts ""
    
            # On arrête la boucle en cas de victoire
            if @board.victory == true
                puts ""
                puts ("=" * 60 ).colorize(:color => :green)
                puts ""
                end_page_win
                puts ""
                puts ("=" * 60 ).colorize(:color => :green)
                puts ""
                mini_menu_replay
                puts ""
            end
    
            #on passe au joueur suivant et on boucle (tour suivant) si pas de vainceur!
            players_change_turns
            i = i + 1
        end
        end_page_draw
        puts ""
        mini_menu_replay
    end


    def mini_menu_replay
        puts (" Voulez vous rejouer ? ").colorize(:magenta)
        puts ""
        puts ("       0        - > QUITTER LE JEU ").colorize(:cyan)
        puts ("  autre touche  - > RECOMMENCER ").colorize(:cyan)
        puts ""
        print (" |-> ").colorize(:cyan)
        choise = gets.chomp
        if choise == "0"
            abort
        else
            Game.new.game_launch
        end
    end



    def players_change_turns
        if @whos_turn_player == @player1
          @whos_turn_player = @player2
        else
          @whos_turn_player = @player1
        end
    end



    def game_launch
        # lance la partie
        while @board.victory == false
          self.whos_turn_running
        end
    end

end