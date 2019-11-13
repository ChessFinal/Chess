class Queen < ChessPiece
    def initialize(x, y, colour, id)
        super(x,y,colour,id)
    end

    def unicode
        if @colour == "white"
            "&#9813"
        else
            "&#9819"
        end
    end

end
