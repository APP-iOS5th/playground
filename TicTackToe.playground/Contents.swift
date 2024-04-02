import UIKit

enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTackToe {
    var gridStorage: [[GridPosition]] = []
    
    /*
     subscript(row: Int, column: Int) -> GridPosition은 TicTackToe 구조체의 gridStorage 배열에서 특정 행(row)과 열(column)의 위치를 지정하여 GridPosition 값을 가져오거나 설정할 수 있도록 하는 subscript입니다.
     get 블록은 gridStorage[row][column]을 통해 요청받은 위치의 값을 반환합니다. 이를 통해 TicTackToe 인스턴스에 대해 game[row, column] 형태로 접근할 때 해당 위치의 GridPosition 값을 얻을 수 있습니다.
     set(newValue) 블록은 새로운 GridPosition 값을 해당 위치에 할당합니다. newValue는 할당하려는 새 값이며, gridStorage[row][column] = newValue를 통해 이 값을 설정합니다. subscript를 통해 game[row, column] = .player1과 같이 새로운 값을 설정할 수 있습니다.
     */
    subscript(atRow row: Int, atColumn column: Int) -> GridPosition {
        get {
            return gridStorage[row][column] // gridStorage[row][column]을 통해 요청받은 위치의 값을 반환
        }
        set(newValue) {
            gridStorage[row][column] = newValue // set(newValue) 블록은 새로운 GridPosition 값을 해당 위치에 할당
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
        var rowString = "| \(row[0].rawValue) "  // rawValue 는 키의 '값'을 가져옴
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        return rowString
    }
}

var game = TicTackToe()
print(game.gameStateString())

print(game[atRow: 0, atColumn: 0])
//game.gridStorage[1][1] = .player1
game[atRow: 1, atColumn: 1] = .player1   // subscript 사용 이후  두 번째 행, 두 번째 열을 player1으로 설정하는 코드
print(game.gameStateString())

game[atRow: 0, atColumn: 2] = .player2
//game.gridStorage[0][2] = .player2
print(game.gameStateString())
