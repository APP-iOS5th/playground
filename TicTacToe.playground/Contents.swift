import UIKit

enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    subscript(atRow row: Int, atColumn column: Int) -> GridPosition {
        get {
            return self.gridStorage[row][column]
        }
        
        set(newValue) {
            self.gridStorage[row][column] = newValue
        }
    }
    
    init() {
        self.gridStorage.append(Array(repeating: .empty, count: 3))
        self.gridStorage.append(Array(repeating: .empty, count: 3))
        self.gridStorage.append(Array(repeating: .empty, count: 3))
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

// normally
var game = TicTacToe()
print(game.gameStateString())

game.gridStorage[1][1] = .player1
print(game.gameStateString())

game.gridStorage[0][2] = .player2
print(game.gameStateString())

// used subscript
// MARK: subscript를 사용할때는 Class[value] 이런식으로 접근 하나부다
var game2 = TicTacToe()
print(game.gameStateString())

game[atRow: 1, atColumn: 1] = .player1
print(game.gameStateString())

game[atRow: 0, atColumn: 2] = .player2
print(game.gameStateString())
