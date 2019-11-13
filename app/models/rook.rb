class Rook < ChessPiece
    def initialize(x, y, colour, id)
        super(x,y,colour,id)
    end

    def unicode
        if @colour == "white"
          "&#9814"
        else
          "&#9820"
        end
    end

end
