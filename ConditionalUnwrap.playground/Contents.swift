
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

