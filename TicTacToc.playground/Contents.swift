enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

// 배열을 가진 배열이 이중배열
struct TicTacToc {
    var gridStorage: [[GridPosition]] = []
    
    // subscript 는 대괄호를 이용해 현미경 같은 거임 (인터페이스.. 느낌)
    subscript(row: Int, column: Int) -> GridPosition {
        // getter: tictactoc 을 가져오거나
        get {
            return gridStorage[row][column] // 위치값 출력
        }
        // setter: tictactoc 을 쓰거나
        set(newValue) {
            gridStorage[row][column] = newValue // 객체에 값 넣음
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

var game = TicTacToc() // 초기화를 통해 게임 스타트
print(game.gameStateString())
print(game[0, 0])

// game.gridStorage[1][1] = .player1
// 위 한줄을 아래 한줄로 간편하게 만들 때 subscript 사용
game[1, 1] = .player1
game[0, 2] = .player2

print(game.gameStateString())
