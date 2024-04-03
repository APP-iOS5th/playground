// ✨ If Else ♥️ 문 조건부 언랩핑을 더 알아보자
// 반환되는 값이 옵셔널이므로, 결과적인 값을 활용하기 위해서는 언랩핑이 필요하다
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
        return nil // 이렇게 값이 없을 수도 있으니까 ?(옵셔널)🔥 넣어준거야
    }
}

func printBallDetails(ofNumber number: Int) {
    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)") // 문자열 글씨가 그대로 출력될거임..
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

printBallDetails(ofNumber: 2)
printBallDetails(ofNumber: 8)
printBallDetails(ofNumber: 12)
printBallDetails(ofNumber: 0)
printBallDetails(ofNumber: 16)

// 옵셔널 언랩핑 연결하기
// if 문을 사용하여 옵셔널 값을 연쇄적으로 연결할 수 있음
class PoolFrame {
    var player1BallType: PoolBallType?
    var player2BallType: PoolBallType?
}

class PoolTable {
    var currentFrame: PoolFrame?
}

func printBallTypeOfPlayer1(forTable table: PoolTable) {
    
    /** 기존이었다면 이렇게 썼겠지? 🤔🫧
        let frame = table.currentFrame
        if(frame != nil) {
            let ballType = frame?.player1BallType
            if(ballType != nil) {
                else { print("Player 1 has no ball type or there is no current frame") }
            } else { print("Player 1 has no ball type or there is no current frame") }
        } **/
    
    // conditional 순차 언랩핑
    if let frame = table.currentFrame, let ballType = frame.player1BallType {
        print(ballType.rawValue)
    } else {
        print("Player 1 has no ball type or there is no current frame")
    }
}

// 실행 코드
let table = PoolTable()
table.currentFrame = nil
printBallTypeOfPlayer1(forTable: table) // 시작 전

let frame = PoolFrame()
frame.player1BallType = nil
frame.player2BallType = nil
table.currentFrame = frame // 프레임에 볼이 확정되지 않은 상태
printBallTypeOfPlayer1(forTable: table)

frame.player1BallType = .solid
frame.player2BallType = .stripe

printBallTypeOfPlayer1(forTable: table)
