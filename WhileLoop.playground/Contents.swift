import UIKit

enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> Self {
        return Self(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadsInRow() -> Int {
    var numberOfHeadsInRow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    
    while currentCoinFlip == .heads {
        numberOfHeadsInRow += 1
        currentCoinFlip = CoinFlip.flipCoin()
    }
    
    return numberOfHeadsInRow
}

let numberOfHeads = howManyHeadsInRow()
