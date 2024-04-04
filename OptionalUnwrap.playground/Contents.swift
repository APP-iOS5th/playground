
enum PoolBallType: String {
    case solid
    case stripe
    case black
}

func poolBallType(forNumber number: Int) -> PoolBallType? {
    if number > 0 && number < 8 {
        return .solid
    } else if number > 8 && number < 16 {
        return .stripe
    } else if number == 8 {
        return .black
    } else {
        return nil
    }
}

func printBallDetails(ofNumber number: Int) -> Void {
    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
    guard let ballType = possibleBallType else {
        print("\(number) is not a valid pool ball number.")
        return
    }
    print("\(number) - \(ballType.rawValue)")
}

printBallDetails(ofNumber: 8)

class PoolFrame {
    var player1BallType: PoolBallType?
    var player2BallType: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}

func printBallTypeOfPlayer1(forTable table: PoolTable) -> Void {
    guard let frame = table.currentFrame, let ballType = frame.player1BallType else {
        print("Player 1 has no ball type or there is no current frame.")
        return
    }
    print(ballType.rawValue)
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
