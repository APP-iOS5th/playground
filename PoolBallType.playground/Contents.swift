
enum PoolBallType:String {
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

let two = poolBallType(forNumber: 2)
let eight = poolBallType(forNumber: 8)
let twelve = poolBallType(forNumber: 12)
let zero = poolBallType(forNumber: 0)
let sixteen = poolBallType(forNumber: 16)

func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    if let ballType = possibleBallType {
        print("\(number) -  \(ballType.rawValue)")
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
    var playwer2BallType: PoolBallType?
}
class PoolTable {
    var currentFrame: PoolFrame?
}
func printBallTypeOfPlayer1(forTable table: PoolTable) {
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type of there is no current frame")
    }
}

let table = PoolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(forTable: table)

let frame = PoolFrame()
frame.player1BallType = nil
frame.playwer2BallType = nil
table.currentFrame = frame
printBallTypeOfPlayer1(forTable: table)

frame.player1BallType = .solid
frame.playwer2BallType = .stripe
printBallTypeOfPlayer1(forTable: table)
