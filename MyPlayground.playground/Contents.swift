// subscript

enum GridPosotion: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosotion]] = []      // 배열 안에 배열
    
    subscript(row: Int, column: Int) -> GridPosotion {
        get {                                   // 접근자
            return gridStorage[row][column]
        }
        set(newValue) {                         // 설정자
            gridStorage[row][column] = newValue
        }
    }
    
    init() {
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
        gridStorage.append(Array(repeating: .empty, count: 3))
    }
    
    func gameStateString() -> String {
        var stateString = "------------\n"
        stateString += printableString(forRow: gridStorage[0])
        stateString += "------------\n"
        stateString += printableString(forRow: gridStorage[1])
        stateString += "------------\n"
        stateString += printableString(forRow: gridStorage[2])
        stateString += "------------\n"
        
        return stateString
    }
    
    func printableString(forRow row: [GridPosotion]) -> String {
        var rowString = "| \(row[0].rawValue) "
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        
        return rowString
    }
}

var game = TicTacToe()
print(game.gameStateString())

print(game[0, 0])

game[1, 1] = .player1
print(game.gameStateString())

game[0, 2] = .player2
print(game.gameStateString())
