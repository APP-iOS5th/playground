
enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    // 서브스크립트
    subscript(atRow row: Int, atCol column: Int) -> GridPosition {
        get {
            return gridStorage[row][column]
        }
        set(newValue) {
            gridStorage[row][column] = newValue
        }
    }
    
    init() {
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
    }
    
    func gameStateString() -> String {
        var stateString = "-------------\n"
        stateString += printableString(forRow: gridStorage[0])
        stateString += "-------------\n"
        stateString += printableString(forRow: gridStorage[1])
        stateString += "-------------\n"
        stateString += printableString(forRow: gridStorage[2])
        stateString += "-------------\n"
        
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

// subscript로 인해 아래 코드와 동일
//game.gridStorage[1][1] = .player1
//print(game.gameStateString())
//
//game.gridStorage[0][2] = .player2
//print(game.gameStateString())

print(game[atRow: 0, atCol: 0])

game[atRow:1, atCol:1] = .player1
print(game.gameStateString())

game[atRow:0, atCol:2] = .player2
print(game.gameStateString())
