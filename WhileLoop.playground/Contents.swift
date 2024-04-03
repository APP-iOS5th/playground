// ♥️ while 루프 ✨로 반복하기
import Foundation

// 동전 던지기를 나타내는 열거형 생성 🫧
enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        // 2개의 값 중 하나가 선택되도록 하는 함수 arc4random_uniform() 🎀
        // 느낌표 언랩 ..
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

// 동전을 던져 연속적으로 앞면이 나오는 횟수를 반환하는 함수 🫧
// 이 함수는 while 루프 내에서 동전을 던지고, 동전 던지기 결과가 앞면인 동안 계속 루프함
func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    
    while CoinFlip.flipCoin() == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()
