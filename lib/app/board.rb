require 'colorize'

require_relative './board_cell'
require_relative './player'

class Board

    attr_accessor :board

    def initialize
        @board =  [*1..9].map { |i|  Board_Cell.new(i).content }
    end


    def to_s
        # affiche le plateau
        puts ""
        puts ""
        puts ("                        A   |   B   |    C                  ").colorize(:yellow)
        puts ("                     -----------------------").colorize(:yellow)
        puts ("                    |       |       |       |").colorize(:yellow)
        puts ("                  1 |   #{@board[0]}   |   #{@board[1]}   |   #{@board[2]}   |").colorize(:yellow)
        puts ("                    |       |       |       |").colorize(:yellow)
        puts ("                    |-------|-------|-------|").colorize(:yellow)
        puts ("                    |       |       |       |").colorize(:yellow)
        puts ("                  2 |   #{@board[3]}   |   #{@board[4]}   |   #{@board[5]}   |").colorize(:yellow)
        puts ("                    |       |       |       |").colorize(:yellow)
        puts ("                    |-------|-------|-------|").colorize(:yellow)
        puts ("                  3 |       |       |       |").colorize(:yellow)
        puts ("                    |   #{@board[6]}   |   #{@board[7]}   |   #{@board[8]}   |").colorize(:yellow)
        puts ("                    |       |       |       |").colorize(:yellow)
        puts ("                     -----------------------").colorize(:yellow)
        puts ""
        puts ""
    end


    def play(symbol)
        # change la case jouée en fonction de ce qu'a joué le joueur (X, ou O)
        position = gets.chomp
            if position == "a1" && @board[0] == " "
                @board[0] = symbol
            end
            if position == "a2" && @board[3] == " "
                @board[3] = symbol
            end
            if position == "a3" && @board[6] == " "
                @board[6] = symbol
            end
            if position == "b1" && @board[1] == " "
                @board[1] = symbol
            end
            if position == "b2" && @board[4] == " "
                @board[4] = symbol
            end
            if position == "b3" && @board[7] == " "
                @board[7] = symbol
            end
            if position == "c1" && @board[2] == " "
                @board[2] = symbol
            end
            if position == "c2" && @board[5] == " "
                @board[5] = symbol
            end
            if position == "c3" && @board[8] == " "
                @board[8] = symbol
            end
            #if position != ("a1" && "a2" && "a3" && "b1" && "b2" && "b3" && "c1" && "c2" && "c3")
            #    puts ""
            #    puts " Mauvaise saisie, tu perd ton tour!"
            #    puts ""
            #end
    end

    def victory
        if @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O' || 
            @board[3] == 'O' && @board[4] == 'O' && @board[5] == 'O' || 
            @board[6] == 'O' && @board[7] == 'O' && @board[8] == 'O' || 
            @board[0] == 'O' && @board[3] == 'O' && @board[6] == 'O' || 
            @board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O' || 
            @board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O' || 
            @board[0] == 'O' && @board[4] == 'O' && @board[8] == 'O' || 
            @board[2] == 'O' && @board[4] == 'O' && @board[6] == 'O' || 
            @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X' || 
            @board[3] == 'X' && @board[4] == 'X' && @board[5] == 'X' || 
            @board[6] == 'X' && @board[7] == 'X' && @board[8] == 'X' || 
            @board[0] == 'X' && @board[3] == 'X' && @board[6] == 'X' || 
            @board[1] == 'X' && @board[4] == 'X' && @board[7] == 'X' || 
            @board[2] == 'X' && @board[5] == 'X' && @board[8] == 'X' || 
            @board[0] == 'X' && @board[4] == 'X' && @board[8] == 'X' || 
            @board[2] == 'X' && @board[4] == 'X' && @board[6] == 'X'
            return true
        else
            return false
        end
    end


end