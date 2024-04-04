import Foundation

enum CoinFlip: Int {
    case front
    case back
    
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyFrontInRow() -> Int {
    var numberOfFrontInRow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    
    while currentCoinFlip == .front {
        numberOfFrontInRow += 1
        currentCoinFlip = CoinFlip.flipCoin()
    }
    
    return numberOfFrontInRow
}

func howManyBackInRow() -> Int {
    var numberOfBackInRow = 0
    
    while CoinFlip.flipCoin() == .back {
        numberOfBackInRow += 1
    }
    
    return numberOfBackInRow
}


howManyFrontInRow()
howManyBackInRow()
