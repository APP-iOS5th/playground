enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = ""
}

// 배열을 가진 배열이 이중배열
struct TicTacToc {
    var gridStorage: [[GridPosition]] = []
    
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
        rowString += "| \(row[2].rawValue) | \n"
        
        return rowString
    }
 }

var game = TicTacToc() // 초기화를 통해 게임 스타트
print(game.gameStateString())
