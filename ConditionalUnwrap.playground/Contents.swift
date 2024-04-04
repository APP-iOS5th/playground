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
<<<<<<< HEAD
//
//func printBallDetails(ofNumber number: Int) -> Void {
//    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
//    
//}
func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    
    // optional unwrapping
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number.")
=======

func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
>>>>>>> main
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
<<<<<<< HEAD
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame.")
=======
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
    
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame")
>>>>>>> main
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

<<<<<<< HEAD

=======
>>>>>>> main
printBallTypeOfPlayer1(forTable: table)
