
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

func printBallDetails(ofNumber number: Int) -> Void  {
    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
    //    전통적인 방법
    //    let frame = table.currentFrame
    //    if(frame != nil) {
    //        let ballType = frame?.player1BallType
    //        if(ballType != nil) {
    //            print(ballType.rawValue)
    //        } else {
    //            print("Player 1 has no ball type or there is no current frame")
    //        }
    //    } else {
    //        print("Player 1 has no ball type or there is no current frame")
    //
    //    }
    if let ballType = possibleBallType {
        print("\(number) - \((ballType.rawValue))")
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
    var play1Balltype: PoolBallType?
    var play2Balltype: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}

func printBallTypeOfPlayer1(forTable table: PoolTable) {
    if let frame = table.currentFrame, let ballType = frame.play1Balltype {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame")
    }
}


let table = PoolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(forTable: table)

let frame = PoolFrame()
frame.play1Balltype = nil
frame.play2Balltype = nil
table.currentFrame = frame
printBallTypeOfPlayer1(forTable: table)

frame.play1Balltype = .solid
frame.play2Balltype = .stripe

printBallTypeOfPlayer1(forTable: table)
