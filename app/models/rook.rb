class Rook < ChessPiece
    

    def unicode
        if @colour == "white"
          "&#9814"
        else
          "&#9820"
        end
    end

end
