
enum PoolBallType: String{
    case solid
    case stripe
    case black
}

func poolBallType(forNumber number: Int) -> PoolBallType? {
    if 0 < number && number < 8 {
        return .solid
    } else if 8 < number && number < 16 {
        return .stripe
    } else if number == 8{
        return .black
    } else {
        return nil
    }
}

func printBallDetalias(ofNumber number: Int) {
    let posibleBallType = poolBallType(forNumber: number)
    
    if let ballType = posibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid poll ball number")
    }
}

printBallDetalias(ofNumber: 2)
printBallDetalias(ofNumber: 23)

class PoolFrame {
    var player1BallType: PoolBallType?
    var player2BallType: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}

func printBallTypeOfPlayer1(forTable table: PoolTable) {
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player1 no ball type or no current frame")
    }
}

let table = PoolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(forTable: table)

let frame = PoolFrame()
frame.player1BallType = nil
frame.player2BallType = nil

table.currentFrame = frame
printBallTypeOfPlayer1(forTable: table)

frame.player1BallType = .solid
frame.player2BallType = .stripe
printBallTypeOfPlayer1(forTable: table)









