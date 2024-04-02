enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStrage: [[GridPosition]] = []
    
    init(){
        gridStrage.append(Array(repeating: .empty, count: 3))
        gridStrage.append(Array(repeating: .empty, count: 3))
        gridStrage.append(Array(repeating: .empty, count: 3))
        }
    
    func gameStateString() -> String {
        var stateString = "-------------\n"
        stateString += printableString(forRow: gridStrage[0])
        stateString += "-------------\n"
        stateString += printableString(forRow: gridStrage[1])
        stateString += "-------------\n"
        stateString += printableString(forRow: gridStrage[2])
        stateString += "-------------\n"
        
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String{
        var rowString = "| \(row[0].rawValue) "
        rowString += "| \(row[1].rawValue) "
        rowString += "| \(row[2].rawValue) |\n"
        return rowString
    }
}
var game = TicTacToe()
print(game.gameStateString())

game.gridStrage[1][1] = .player1
print(game.gameStateString())

game.gridStrage[0][2] = .player2
print(game.gameStateString())
