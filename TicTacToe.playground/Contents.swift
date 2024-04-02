//subscript
enum GridPosition: String {
    case player1 = "o"
    case player2 = "x"
    case empty = " "
}

struct TicTacToe {
    var gridStrage: [[GridPosition]] = []
    
    //subscript, get,set: 접근자라고 볼수 있음, 예약어
    subscript(atRow row: Int, atColumn column: Int) -> GridPosition{
        get{
            return gridStrage[row][column]
        }
        set(newValue){
            gridStrage[row][column] = newValue
        }
    }
    
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

print(game.gridStrage[0][0])
print(game[atRow: 0,atColumn:0])

game[atRow:1, atColumn: 1] = .player1
print(game.gameStateString())

game[atRow:0, atColumn: 2] = .player2
print(game.gameStateString())
