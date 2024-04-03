import UIKit

//MARK: - ForLoop

let theBeatles = ["John","Paul","George","Ringo"]

for musician in theBeatles {
    print(musician)
}

// 5단 구구단
for value in 1...12 {
    print("5 x \(value) = \(value*5)")
}

let beatlesByInstrument = ["rhythm guitar": "John",
                           "bass guitar": "Paul",
                           "lead guitar": "George",
                           "drums": "Ringo"]

for (key, value) in beatlesByInstrument {
    print("\(value) plays \(key)")
}


//MARK: - WhileLoop

enum CoinFlip: Int {
    case heads
    case tails
    static func flipCoin() -> CoinFlip {
        return CoinFlip(rawValue: Int(arc4random_uniform(2)))!
    }
}

func howManyHeadsInARow() -> Int {
    var numberOfHeadsInARow = 0
    var currentCoinFlip = CoinFlip.flipCoin()
    while currentCoinFlip == .heads {
        numberOfHeadsInARow = numberOfHeadsInARow + 1
        currentCoinFlip = CoinFlip.flipCoin()
    }
    return numberOfHeadsInARow
}
let noOfHeads = howManyHeadsInARow()
print(noOfHeads)

