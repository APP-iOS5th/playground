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

func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

printBallDetails(ofNumber: 2)
printBallDetails(ofNumber: 8)
printBallDetails(ofNumber: 12)
printBallDetails(ofNumber: 0)
printBallDetails(ofNumber: 16)

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
        print("Player 1 has no ball type or there is no current frame")
    }
}