

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
    
    func gameStateString() -> String {
        var stateString = ""
        
        for i in 0..<3 {
            stateString += printableString(forRow: gridStorage[i])
            stateString = "-------------\n"
        }
        
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = ""
        
        for i in 0..<3 {
            rowString += "| \(row[i].rawValue)"
        }
        
        return rowString
    }
    
}
