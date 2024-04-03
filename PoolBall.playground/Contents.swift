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

let two = poolBallType(forNumber: 2)
let eight = poolBallType(forNumber: 8)
let twelve = poolBallType(forNumber: 12)
let zero = poolBallType(forNumber: 0)
let sixteen = poolBallType(forNumber: 16)

func printBallDetails(ofNumber number: Int) { //반환값이 없어서 -> Void 생략
    let possibleBallType = poolBallType(forNumber: number) //타입이 :PoolBallType? 인데 생략가능
    if let ballType = possibleBallType {
        print("\(number) - \(ballType.rawValue)")
    } else {
        print("\(number) is not a valid pool ball number")
    }
}

printBallDetails(ofNumber: 2)
printBallDetails(ofNumber: 8)
printBallDetails(ofNumber: 12)
printBallDetails(ofNumber: 0)
printBallDetails(ofNumber: 16)
