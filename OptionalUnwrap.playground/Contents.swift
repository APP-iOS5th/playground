
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

func printBallDetails(ofNumber number: Int) -> Void {
    let possibleBallType: PoolBallType? = poolBallType(forNumber: number)
    guard let ballType = possibleBallType else {
        print("\(number) is not a valid pool ball number.")
        return
    }
    print("\(number) - \(ballType.rawValue)")
}

printBallDetails(ofNumber: 8)
