import Foundation

/// 동전 던지기를 나타내는 열거형을 생성하고 무작위 생성기를 사용하여 앞면 또는 뒷면을 무작위로 선택
/// 정수형 enum의 값(heads, tails)들은 값을 초기화하지 않으면 0 부터 넘버링됨.(Defualt)
/// 그러면 아래의 경우에는 heads = 0, tails = 1 일 것임.
enum CoinFlip: Int { // 열거형도 객체화(구조체인 것 처럼 동작)
    case heads
    case tails
    
    // arc4random_uniform() : 함수는 난수를 생성하는 함수, 파라미터로 전달된 범위 내의 난수를 생성.
    // example) arc4random_uniform(2) : 0과 1 사이의 난수를 생성
    // static : 전역함수
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

//func howManyHeadsInARow() -> Int {
//    var numberOfHeadsInRow = 0
//    var currentCoinFlip = CoinFlip.flipCoin()
//    
//    while currentCoinFlip == .heads {
//        numberOfHeadsInRow = numberOfHeadsInRow + 1
//        currentCoinFlip = CoinFlip.flipCoin()
//    }
//    return numberOfHeadsInRow
//}

// 위의 코드를 아래의 코드로 축약!

/// while loop 내에서 동전을 던지고, 동전 던지기 경과가 앞면인 동안 계속 loop
/// - Returns: 동전을 던져 연속적으로 앞면이 나오는 횟수를 반환,
func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    
    while CoinFlip.flipCoin() == .heads { // CoinFlip(). nono CoinFlip. -> 전역함수를 호출하는 방법
        numberOfHeadsInRow = numberOfHeadsInRow + 1
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()

