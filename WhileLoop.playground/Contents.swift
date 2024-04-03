import Foundation

enum CoinFlip: Int {
    case heads
    case tails
    
    static func flipCoin() -> CoinFlip {        
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

// 동전을 던져 연속적으로 앞면이 나오는 횟수를 반환하는 함수
func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    while CoinFlip.flipCoin() == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
    }
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()
