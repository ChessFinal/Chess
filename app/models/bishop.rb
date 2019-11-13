class Bishop < ChessPiece

    def initialize(x, y, colour, id)
        super(x,y,colour,id)
    end

    def unicode
        if @colour == "white"
            "&#9815"
        else
            "&#9821"
        end
    end

    def is_obstructed?
    "test works"
    end



end
