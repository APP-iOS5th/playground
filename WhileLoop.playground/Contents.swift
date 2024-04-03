import Foundation

enum CoinFlip: Int {
    // 정수형 객체는 degault 0부터 시작
    case heads //0
    case tails //1
    
    // static -> 전역함수
    static func flipCoin() -> CoinFlip {
        // 특정한 랜덤 값
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInRow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    
    while currentCoinFlip == .heads {
        numberOfHeadsInRow = numberOfHeadsInRow + 1
        currentCoinFlip = CoinFlip.flipCoin()
    }
    
    return numberOfHeadsInRow
}

let noOfHeads = howManyHeadsInARow()

print("\(noOfHeads)")
