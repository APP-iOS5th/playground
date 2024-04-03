// ♥️ while 루프 ✨로 반복하기
import Foundation

enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        // 2개의 값 중 하나가 선택되도록 하는 함수 arc4random_uniform() 🎀
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    
    while CoinFlip.flipCoin() == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()
