
enum PoolBallType: String {
    case solid
    case stripe
    case black
}

func poolBallType(forNumber number: Int) -> PoolBallType? {
    if number > 0 && number < 8 {
        return .solid
    }
    else if number > 8 && number < 16 {
        return .stripe
    }
    else if number == 8 {
        return .black
    }
    else {
        return nil
    }
}

func printBallDetails(ofNumber number: Int) { //반환값이 없어서 void생략
    let possibleBallType = poolBallType(forNumber: number) //PoolBallType?타입 생략
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    }
    else {
        print("\(number) is not a valid pool ball number")
    }
}
printBallDetails(ofNumber: 2)
printBallDetails(ofNumber: 8)
printBallDetails(ofNumber: 12)
printBallDetails(ofNumber: 0)
printBallDetails(ofNumber: 16)

class PoolFrame {
    var playerBallType: PoolBallType?
    var player2BallType: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}



func printBallTypeOfplayer1(forTable table: PoolTable){
    
    /*
     전통적인 방식
    let frame = table.currentFrame
    if(frame !=nil){
        let ballType = frame?.playerBallType
        if(ballType != nil){
            print(ballType.rawValue)
        }
    }
     else {
     print("Player 1 has no ball type or there is no current frame")
     }
     else {
      print("Player 1 has no ball type or there is no current frame")
      }

     
    */
    
    if let frame = table.currentFrame, let ballType = frame.playerBallType {
        print(ballType.rawValue)
    }
    else {
        print("Player 1 has no ball type or there is no current frame")
    }
}

let table = PoolTable()
table.currentFrame = nil
printBallTypeOfplayer1(forTable: table)

let frame = PoolFrame()
frame.playerBallType = nil
frame.player2BallType = nil
table.currentFrame = frame
printBallTypeOfplayer1(forTable: table)

frame.playerBallType = .solid
frame.player2BallType = .stripe
printBallTypeOfplayer1(forTable: table)
