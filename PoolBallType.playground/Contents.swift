import UIKit

//MARK: - if/else로 의사 결정하기
enum PoolBallType: String {
    case solid
    case stripe
    case black
    
}

//Int를 받아 PoolBallType을 반환하는 메소드를 생성합니다.
func poolBallType(forNumber number: Int) -> PoolBallType? {
    if number > 0 && number < 8 {
        return .solid
    } else if number > 8 && number < 16 {
        return .stripe
    } else if number == 8{
        return .black
    } else {
        return nil
    }
}


//MARK: - Conditional Unwrapping
//조건부 언랩핑 이해하기: 반환되는 값이 옵셔널이므로, 결과적인 값을 활용하기 위해서는 언랩핑이 필요합니다
func printBallDetails(ofNumber number: Int) {
    let possibleBallType = poolBallType(forNumber: number)
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

//옵셔널 언랩핑 연결하기: if문을 사용하여 옵셔널 값을 연쇄적으로 언랩핑할 수 있습니다.
class PoolFrame {
    var player1BallType: PoolBallType?
    var player2BallType: PoolBallType?
}
class PoolTable {
    var currentFrame: PoolFrame?
}
func printBallTypeOfPlayer1(forTable table: PoolTable) {
    if let frame = table.currentFrame, let ballType =
        frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame")
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

//연관 값이 있는 열거형 사용하기: 열거형은 연관 값을 가질 수 있으며, if문을 사용하여 열거형의 케이스를 확인하고 연관 값을 한 번에 추출할 수 있습니다.
enum FrameResult {
    case win(congratulations: String)
    case lose(commiserations: String)
}
func printMessage(forResult result: FrameResult) {
    if case FrameResult.win(congratulations: let winMessage) = result {
        print("You won! \(winMessage)")
    } else if case FrameResult.lose(commiserations: let loseMessage) = result {
        print("You lost :( \(loseMessage)")
    }
}
