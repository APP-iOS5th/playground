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
        return nil
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
