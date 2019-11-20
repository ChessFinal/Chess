class Pawn < ChessPiece
  
  

    def unicode
        if @colour == "white"
            "&#9817"
        else
            "&#9823"
        end
    end

end
