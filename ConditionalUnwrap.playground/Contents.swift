
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

//func printBallDetails(ofNumber number: Int) -> Void {
//    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
//}

// 조건부 언래핑 이해하기 : 반환되는 값이 옵셔널이므로, 결과적인 값을 활용하기 위해서는 언래핑이 필요.
func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

printBallDetails(ofNumber: 2)
printBallDetails(ofNumber: 9)
printBallDetails(ofNumber: 12)
printBallDetails(ofNumber: 0)
printBallDetails(ofNumber: 16)



// 옵셔널 언래핑 연결
// if문을 사용하여 옵셔널 값을 연쇄적으로 언래핑할 수 있음.
class PoolFrame {
    var player1BallType: PoolBallType?
    var player2BallType: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}

func printBallTypeOfPlayer1(foeTable table: PoolTable) {
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame")
    }
}

let table = PoolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(foeTable: table)

let frame = PoolFrame()
frame.player1BallType = nil
frame.player2BallType = nil
table.currentFrame = frame
printBallTypeOfPlayer1(foeTable: table)

frame.player1BallType = .solid
frame.player2BallType = .solid

printBallTypeOfPlayer1(foeTable: table)


