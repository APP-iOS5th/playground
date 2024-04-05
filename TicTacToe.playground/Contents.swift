enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    subscript(row: Int, colunm: Int) -> GridPosition {
        get { return gridStorage[row][colunm] }
        set(newValue) { gridStorage[row][colunm] = newValue }
    }
    
    init() {
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
    }
    
    func gameStateString() -> String {
        var stateString = "-------\n"
        stateString += printableString(forRow: gridStorage[0])
        stateString += "-------\n"
        stateString += printableString(forRow: gridStorage[1])
        stateString += "-------\n"
        stateString += printableString(forRow: gridStorage[2])
        stateString += "-------\n"

        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = "|\(row[0].rawValue)"
        rowString += "|\(row[1].rawValue)"
        rowString += "|\(row[2].rawValue)|\n"
        return rowString
    }
}

print("==========")
var game = TicTacToe()
print(game.gameStateString())

print("==========")
game[0,1] = .player1
print(game.gameStateString())

print("==========")
game[0,2] = .player2
print(game.gameStateString())















