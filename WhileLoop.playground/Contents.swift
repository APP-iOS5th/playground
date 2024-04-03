import Foundation

enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))! // 0 or 1을 주는 함수
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
//    var currentCoinFlip = CoinFlip.flipCoin()
//    
//    while currentCoinFlip == .heads {
//        numberOfHeadsInRow = numberOfHeadsInRow + 1
//        currentCoinFlip = CoinFlip.flipCoin()
//
//    }
    while CoinFlip.flipCoin() == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
//        currentCoinFlip = CoinFlip.flipCoin()

    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()
