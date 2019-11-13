class Knight < ChessPiece
    def initialize(x, y, colour, id)
        super(x,y,colour,id)
    end

    def unicode
        if @colour == "white"
            "&#9816"
        else
            "&#9822"
        end
    end
end
