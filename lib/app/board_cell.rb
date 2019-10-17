require_relative './player'

class Board_Cell

    attr_accessor :position, :content

    def initialize(position)
        @position = position
        @content = " "
    end
    
end