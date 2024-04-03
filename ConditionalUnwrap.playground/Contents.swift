
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
