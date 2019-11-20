class Queen < ChessPiece
    
    def unicode
        if @colour == "white"
            "&#9813"
        else
            "&#9819"
        end
    end

end
