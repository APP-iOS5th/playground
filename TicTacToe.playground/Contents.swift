import UIKit

// 플레이어 말
enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var grideStorage: [[GridPosition]] = []
    
    subscript(atRow row: Int, atColumn column: Int) -> GridPosition {
        get {
            return grideStorage[row][column]
        }
        set {
            grideStorage[row][column] = newValue
        }
    }
    
    init() {
            grideStorage.append(Array(repeating: .empty, count: 3))
            grideStorage.append(Array(repeating: .empty, count: 3))
            grideStorage.append(Array(repeating: .empty, count: 3))
        }
    
    // 게임 판을 출력 (가로 줄)
    func gameStateString() -> String {
        var stateString = "-------------\n"
        stateString += printableString(forRow: grideStorage[0])
        stateString += "-------------\n"
        stateString += printableString(forRow: grideStorage[1])
        stateString += "-------------\n"
        stateString += printableString(forRow: grideStorage[2])
        stateString += "-------------\n"
        
        return stateString
    }
    
    // (세로 줄)
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = "| \(row[0].rawValue) "
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        return rowString
    }
}

// 게임 시작
var game = TicTacToe()

print(game.gameStateString())

// 말 그리기
game[atRow: 1, atColumn: 1] = .player1
print(game.gameStateString())

game[atRow: 0, atColumn: 2] = .player2
print(game.gameStateString())

