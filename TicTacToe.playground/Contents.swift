import Foundation

enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    init() {
        for _ in 0..<3 {
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
        var stateString = "------------\n"
        for row in gridStorage {
            stateString += printableString(forRow: row)
            stateString += "------------\n"
        }
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowStirng = "|"
        for position in row {
            rowStirng += " \(position.rawValue)|"
        }
        rowStirng += "\n"
        return rowStirng
    }
}

var game = TicTacToe()
game[1,1] = .player1
game [0,2] = .player2
game[0,0] = .player1
game[1,2] = .player2
game[2,2] = .player1
print(game.gameStateString())

let topLeft = game[0, 0]
let middle = game[1, 1]
let bottomRight = game[2, 2]
let p1HasWon = (topLeft == .player1) && (middle == .player1) && (bottomRight == .player1)
print(p1HasWon)
