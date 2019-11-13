class Pawn < ChessPiece
  
    def initialize(x, y, colour, id)
        super(x,y,colour,id)
    end

    def unicode
        if @colour == "white"
            "&#9817"
        else
            "&#9823"
        end
    end

end
