class Knight < ChessPiece
  

    def unicode
        if @colour == "white"
            "&#9816"
        else
            "&#9822"
        end
    end
end
