require 'colorize'
#class Display

    #attr_accessor :name

    def welcome_page
        puts ("_" * 50).colorize(:light_blue)
        print ("|").colorize(:light_blue)
        print ("        BIENVENUE DANS CE JEUX DU MORPION       ").colorize(:color => :black, :background => :cyan)
        puts ("|").colorize(:light_blue)
        print ("|").colorize(:light_blue)
        print (" " * 48).colorize(:background => :cyan)
        puts ("|").colorize(:light_blue)
        print ("|").colorize(:light_blue)
        print ("          Vous connaissez le principe!          ").colorize(:color => :black, :background => :cyan)
        puts ("|").colorize(:light_blue)
        print ("|").colorize(:light_blue)
        print ("  Ici vous jouez a 1 VS 1 sur un board de 3X3   ").colorize(:color => :black, :background => :cyan)
        puts ("|").colorize(:light_blue)
        print ("|").colorize(:light_blue)
        print (" " * 48).colorize(:background => :cyan)
        puts ("|").colorize(:light_blue)
        puts ("-" * 50).colorize(:light_blue)
        puts ""
        puts (" ATTENTION Dans ce jeux votre coup n'est pas compté si vous effectuez une mauvaise saisie! ").colorize(:color => :red, :background => :white)
        puts ""
    end


    def end_page_win
        puts ""
        puts ("_" * 50).colorize(:white)
        print ("|").colorize(:white)
        print ("                FIN DE LA PARTIE                ").colorize(:color => :black, :background => :green)
        puts ("|").colorize(:white)
        print ("|").colorize(:white)
        print (" " * 48).colorize(:background => :green)
        puts ("|").colorize(:white)
        print ("").colorize(:white)
        print ("                 #{@whos_turn_player.name} a gagné !!!").colorize(:orange)
        puts ("").colorize(:white)
        print ("|").colorize(:white)
        print ("              Merci et a Bientot                ").colorize(:color => :black, :background => :green)
        puts ("|").colorize(:white)
        print ("|").colorize(:white)
        print (" " * 48).colorize(:background => :green)
        puts ("|").colorize(:white)
        puts ("-" * 50).colorize(:white)
        puts ""
    end

    
    def end_page_draw
        puts ""
        puts ("_" * 50).colorize(:white)
        print ("|").colorize(:white)
        print ("                FIN DE LA PARTIE                ").colorize(:color => :black, :background => :red)
        puts ("|").colorize(:white)
        print ("|").colorize(:white)
        print (" " * 48).colorize(:background => :red)
        puts ("|").colorize(:white)
        print ("").colorize(:white)
        print ("         La Partie se solde sur une égalité").colorize(:orange)
        puts ("").colorize(:white)
        print ("|").colorize(:white)
        print ("              Merci et a Bientot                ").colorize(:color => :black, :background => :red)
        puts ("|").colorize(:white)
        print ("|").colorize(:white)
        print (" " * 48).colorize(:background => :red)
        puts ("|").colorize(:white)
        puts ("-" * 50).colorize(:white)
        puts ""
    end

#end