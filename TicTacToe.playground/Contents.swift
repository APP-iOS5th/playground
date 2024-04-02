

enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}



struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    init() {
        for i in 0..<3 {
            gridStorage.append(Array(repeating: .empty, count: 3))
        }
    }
    
    subscript(row: Int, column: Int) -> GridPosition {
            get {
                return gridStorage[row][column]
            }
            set(newValue) {
                gridStorage[row][column] = newValue
            }
        }
    
    func gameStateString() -> String {
        var stateString = "-------------\n"
        for i in 0..<3 {
            stateString += printableString(forRow: gridStorage[i])
            stateString += "-------------\n"
        }
        
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = "| \(row[0].rawValue) "
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        
        return rowString
    }
    
}

var game = TicTacToe()
print(game.gameStateString())

game.gridStorage[1][1] = .player1
print(game.gameStateString())
print(game[1,1])

game.gridStorage[0][2] = .player2
print(game.gameStateString())
